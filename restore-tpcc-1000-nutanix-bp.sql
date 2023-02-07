restore database tpcc from disk='K:\tpcc_bp_1k_494GB-4-1-RW-ratio-2DB-disks-backup-PT1 ',
disk='K:\tpcc_bp_1k_494GB-4-1-RW-ratio-2DB-disks-backup-PT2',
disk='K:\tpcc_bp_1k_494GB-4-1-RW-ratio-2DB-disks-backup-PT3',
disk='K:\tpcc_bp_1k_494GB-4-1-RW-ratio-2DB-disks-backup-PT4'
 with
 move 'tpcc-e-2' to 'm:\tpcc-e-2.mdf',
 move 'tpcc-f-2' to 'n:\tpcc-f-2.mdf'  ;
