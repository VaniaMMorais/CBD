function countPhonesByPrefix() {
    const cursor = db.phones.aggregate([
      {
        $project: {
          prefix: "$components.prefix"
        }
      },
      {
        $group: {
          _id: "$prefix",
          count: { $sum: 1 }
        }
      }
    ]);
  
    while (cursor.hasNext()) {
      const doc = cursor.next();
      print(`Prefix: ${doc._id}, Count: ${doc.count}`);
    }
  }
  
  countPhonesByPrefix();


//Prefix: 234, Count: 33499
// Prefix: 233, Count: 33231
// Prefix: 21, Count: 33467
// Prefix: 232, Count: 33340
// Prefix: 231, Count: 33157
// Prefix: 22, Count: 33306