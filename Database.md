<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Database Normalization</a></li>
<li><a href="#sec-2">2. CAP Theorem</a>
<ul>
<li><a href="#sec-2-1">2.1. Favor consistency over availability: RDBMS,Paxos</a></li>
<li><a href="#sec-2-2">2.2. Favor availability over consistency: BASE, NoSQL</a></li>
<li><a href="#sec-2-3">2.3. Q: What's the problem of BASE (vs. Strong consistence)</a></li>
</ul>
</li>
<li><a href="#sec-3">3. ACID</a>
<ul>
<li><a href="#sec-3-1">3.1. Transaction</a></li>
<li><a href="#sec-3-2">3.2. Implementation</a>
<ul>
<li><a href="#sec-3-2-1">3.2.1. How to return to previous valid state(Cascading Rollback) :</a></li>
<li><a href="#sec-3-2-2">3.2.2. Locking vs. multiversioning</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-4">4. BASE</a></li>
<li><a href="#sec-5">5. Triggers</a>
<ul>
<li><a href="#sec-5-1">5.1. Statement trigger:</a></li>
</ul>
</li>
<li><a href="#sec-6">6. Document vs Relational vs. Graph</a>
<ul>
<li><a href="#sec-6-1">6.1. History</a></li>
<li><a href="#sec-6-2">6.2. Document(MongoDB)</a>
<ul>
<li><a href="#sec-6-2-1">6.2.1. Pros:</a></li>
<li><a href="#sec-6-2-2">6.2.2. Cons:</a></li>
</ul>
</li>
<li><a href="#sec-6-3">6.3. Relational</a>
<ul>
<li><a href="#sec-6-3-1">6.3.1. Pros:</a></li>
<li><a href="#sec-6-3-2">6.3.2. Cons:</a></li>
</ul>
</li>
<li><a href="#sec-6-4">6.4. Graph</a></li>
<li><a href="#sec-6-5">6.5. Convergence</a></li>
</ul>
</li>
<li><a href="#sec-7">7. Schema vs. Schemaless</a></li>
</ul>
</div>
</div>

# Database Normalization<a id="sec-1" name="sec-1"></a>

# CAP Theorem<a id="sec-2" name="sec-2"></a>

<https://en.wikipedia.org/wiki/CAP_theorem>
In the present of network partition, consistency and availability cannot be achieved simultaneously. 

## Favor consistency over availability: RDBMS,Paxos<a id="sec-2-1" name="sec-2-1"></a>

## Favor availability over consistency: BASE, NoSQL<a id="sec-2-2" name="sec-2-2"></a>

## Q: What's the problem of BASE (vs. Strong consistence)<a id="sec-2-3" name="sec-2-3"></a>

<https://mariadb.org/eventually-consistent-databases-state-of-the-art/>
This weak form of consistency does not restrict the ordering of operations on different keys in any way, thus forcing programmers to reason about all possible orderings and exposing many inconsistencies to users. For example, under eventual consistency, after Alice updates her profile, she might not see that update after a refresh. Or, if Alice and Bob are commenting back-and-forth on a blog post, Carol might see a random non-contiguous subset of that conversation.
 When an engineer builds an application on an eventually consistent database, the engineer needs to answer several tough questions every time when data is accessed from the database:
What is the effect on the application if a database read returns an arbitrarily old value?
What is the effect on the application if the database sees modification happen in the wrong order?
What is the effect on the application if a client is modifying the database as another tries to read it?
And what is the effect that my database updates have on other clients, which are trying to read the data?

# ACID<a id="sec-3" name="sec-3"></a>

Atomicicty Consistency, Isolation, Durability 

## Transaction<a id="sec-3-1" name="sec-3-1"></a>

In the context of databases, a sequence of database operations that satisfies the ACID properties and, thus, can be perceived as **single logical operation** on the data, is called a transaction. For example, a transfer of funds from one bank account to another, even involving multiple changes such as debiting one account and crediting another, is a single transaction. Eg: Transfer money from one account A to another account B is a **transaction** which consists of two actions: subtract 10 from A and add 10 to B. 

## Implementation<a id="sec-3-2" name="sec-3-2"></a>

### How to return to previous valid state(Cascading Rollback) :<a id="sec-3-2-1" name="sec-3-2-1"></a>

When a transaction T1 causes a failure and rollback must be performed. Since other transactions dependent on T1's actions must also be rollbacked due to T1's failure, thus causing cascading effect. That is, one transaction's failure causes many to fail. Rollback is usually implemented with a transaction log or multiversion concurrency control. 

### Locking vs. multiversioning<a id="sec-3-2-2" name="sec-3-2-2"></a>

When using locking. The lock must always be acquired before processing data, including data that is read but not modified. The lock must always be acquired before processing data, including data that is read but not modified. Thus, readers block writers and writers block readers. An alternative to locking is multiversion concurrency control, in which the database provides each reading transaction the prior, unmodified version of data that is being modified by another active transaction. This allows readers to operate without acquiring locks. Thus, in Multiversion Concurrency Ccontrol(MVCC) and who supports it?

# BASE<a id="sec-4" name="sec-4"></a>

Basically Available, Soft state, Eventual consistency 

# Triggers<a id="sec-5" name="sec-5"></a>

## Statement trigger:<a id="sec-5-1" name="sec-5-1"></a>

BEFORE: eg. input validation 
AFTER: eg: modify another table for audit. 

    /*This is row level trigger, if two rows are updated, two records are inserted into the trigger table. */ 
    CREATE OR REPLACE TRIGGER phone_book_audit
      AFTER UPDATE ON phone_book FOR EACH ROW
    BEGIN
      INSERT INTO phone_book_audit 
        (audit_id,audit_change, audit_l_name, audit_f_name, audit_old_phone_number, audit_new_phone_number, audit_date) 
        VALUES
        (audit_id_sequence.nextVal,'Update', :OLD.last_name, :OLD.first_name, :OLD.phone_number, :NEW.phone_number, SYSDATE);
    END;

The following example replace the last name with an abbreviation if the last name is too long. 

    CREATE OR REPLACE TRIGGER phone_book_insert
      BEFORE INSERT ON phone_book FOR EACH ROW
      WHEN (LENGTH(new.last_name) > 10)
    BEGIN
        :new.last_name := SUBSTR(:new.last_name,0,1);
    END;

# Document vs Relational vs. Graph<a id="sec-6" name="sec-6"></a>

## History<a id="sec-6-1" name="sec-6-1"></a>

Historically, data started out being represented as one big tree (the hierarchical model), but that wasn't good for many-to-one/many-to-many relationships, so the relational model was invented. More recently, developers found that some applications don't fit well in the relational model either. NoSQL datastores have diverged in two main direction. 

## Document(MongoDB)<a id="sec-6-2" name="sec-6-2"></a>

### Pros:<a id="sec-6-2-1" name="sec-6-2-1"></a>

-   All data in one place, no need to join multiple tables which could be slow for large table.
-   Data locality

### Cons:<a id="sec-6-2-2" name="sec-6-2-2"></a>

-   data duplication when many-to-one or many-to-many relationship happen.
-   What if we only need a small portion of the full document which the database typically load the entire documents.

## Relational<a id="sec-6-3" name="sec-6-3"></a>

### Pros:<a id="sec-6-3-1" name="sec-6-3-1"></a>

-   normalized data store has no duplication, easy to achieve consistency

### Cons:<a id="sec-6-3-2" name="sec-6-3-2"></a>

-   Multiple table joins could be slow. Remedy: It's a common practice to put a caching layer in front of normalized data store. <http://www.sarahmei.com/blog/2013/11/11/why-you-should-never-use-mongodb/>

## Graph<a id="sec-6-4" name="sec-6-4"></a>

-   many-to-many relation.
-   good for semi-structure data (for example, location in French might has different attributes than the location in US)

## Convergence<a id="sec-6-5" name="sec-6-5"></a>

-   Most relational DB supports query inside XML, some supports json. This allows to represent tree structure
-   some document store supports join though still slower than relational.
-   Document vs. relation is in fact normalization vs. denormalization.

# Schema vs. Schemaless<a id="sec-7" name="sec-7"></a>

Schemaless(ie.,/schema-on-read/, that is up to the application code to interprete) is good when 
-   too many type of objects, cumbersome to make each a separate table

++ the structure is determined by external systems over which you have no control and may change at any time 

Schema(aka.,/schema-on-write/) is good since we can enforce the structure. 

Schema vs. schemaless is analogue to dynamic-type vs. static-type in computer language.