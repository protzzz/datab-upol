-- SELECT výraz, kde je dvakrát použita téže relační proměnná

-- Omezení světa:
-- Zajímají nás lidi v našem okolí.

-- Lidi identifikujeme jménem.

DROP TABLE IF EXISTS child;

CREATE TABLE child (
    child_name text,
    parent_name text
); 

-- "child_name" je dítětem "parent_name"

INSERT INTO child VALUES 
     ( 'Anna', 'Bert' ), 
     ( 'Bert', 'Cyril' ),
     ( 'Bert', 'Daniela' );

TABLE child;

SELECT DISTINCT child1.child_name AS grandchild_name, 
                child2.parent_name AS grandparent_name
FROM   child AS child1, child AS child2
WHERE  child1.parent_name = child2.child_name;
-- "grandchild_name" je vnukem "grandparent_name".
