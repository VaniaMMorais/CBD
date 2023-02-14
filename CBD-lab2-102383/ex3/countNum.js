countNum = function countNum(){
    cursor= db.phones.aggregate([{$group:{_id: "$components.prefix", Nums:{$sum:1}}}])
    //To print all items in a result cursor in mongo shell scripts, use the following idiom
    while ( cursor.hasNext() ) {
        printjson( cursor.next() );
     }
}