.class final Lcom/facebook/katana/provider/FacebookDatabaseHelper$16;
.super Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.source "FacebookDatabaseHelper.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 433
    const-string v0, "DROP TABLE search_results"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    const-string v0, "DROP TABLE info_contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const-string v0, "DROP TABLE default_user_images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 439
    const-string v0, "drop tables"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$16;->a(Ljava/lang/String;)V

    .line 441
    const-string v0, "ALTER TABLE friends RENAME TO connections"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE connections ADD COLUMN connection_type INT NOT NULL DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    const-string v0, "alter table friends"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$16;->a(Ljava/lang/String;)V

    .line 448
    const-string v0, "CREATE TABLE friends_data (_id INTEGER PRIMARY KEY,user_id INT UNIQUE,first_name TEXT,last_name TEXT,cell TEXT,other TEXT,email TEXT,birthday_month INT,birthday_day INT,birthday_year INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v0, "CREATE TABLE search_results (_id INTEGER PRIMARY KEY,user_id INT,display_name TEXT,user_image_url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    const-string v0, "create new tables"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$16;->a(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO friends_data(user_id) SELECT user_id  FROM connections  WHERE connection_type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    const-string v0, "insert new recs to friends_data table"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$16;->a(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b()Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 466
    const-string v0, "forceFriendsSync"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$16;->a(Ljava/lang/String;)V

    .line 467
    return-void
.end method
