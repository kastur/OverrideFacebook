.class public Lcom/facebook/contacts/data/ContactsDbSchemaPart;
.super Lcom/facebook/orca/common/sqlite/SharedSQLiteSchemaPart;
.source "ContactsDbSchemaPart.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "contacts"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/common/sqlite/SharedSQLiteSchemaPart;-><init>(Ljava/lang/String;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const-string v0, "CREATE TABLE contacts (fbid INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, name TEXT, data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const-string v0, "orca:ContactsDbSchemaPart"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading part from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "DROP TABLE IF EXISTS contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/facebook/contacts/data/ContactsDbSchemaPart;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void
.end method
