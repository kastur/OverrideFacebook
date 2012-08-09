.class public Lcom/facebook/katana/provider/ObservedContactsProvider;
.super Landroid/content/ContentProvider;
.source "ObservedContactsProvider.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static c:Ljava/lang/String;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Landroid/content/UriMatcher;


# instance fields
.field private f:Lcom/facebook/katana/provider/FacebookDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 34
    const-class v0, Lcom/facebook/katana/provider/ObservedContactsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->c:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.facebook.katana.provider.ObservedContactsProvider/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTENT:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    iget-object v1, v1, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->a:Landroid/net/Uri;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.facebook.katana.provider.ObservedContactsProvider/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTACT_ID:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    iget-object v1, v1, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTACT_ID:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    iget-object v1, v1, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->b:Landroid/net/Uri;

    .line 116
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->e:Landroid/content/UriMatcher;

    .line 118
    invoke-static {}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->values()[Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    sget-object v5, Lcom/facebook/katana/provider/ObservedContactsProvider;->e:Landroid/content/UriMatcher;

    const-string v6, "com.facebook.katana.provider.ObservedContactsProvider"

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v3

    invoke-virtual {v5, v6, v4, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    sput-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->d:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->d:Ljava/util/Map;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->d:Ljava/util/Map;

    const-string v1, "signature"

    const-string v2, "signature"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->d:Ljava/util/Map;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 77
    return-void
.end method

.method private a(Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/util/List;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 224
    .line 226
    iget-object v1, p0, Lcom/facebook/katana/provider/ObservedContactsProvider;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 228
    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 229
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 231
    sget-object v3, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTENT:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 232
    array-length v3, p2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, p2, v1

    .line 233
    const-string v5, "observed_contacts"

    const-string v6, "signature"

    invoke-virtual {v2, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 235
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 237
    if-eqz p3, :cond_0

    .line 238
    sget-object v4, Lcom/facebook/katana/provider/ObservedContactsProvider;->a:Landroid/net/Uri;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    sget-object v5, Lcom/facebook/katana/provider/ObservedContactsProvider;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not insert into observed_contacts contact id "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "contact_id"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    array-length v1, p2

    if-ne v0, v1, :cond_4

    .line 251
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 252
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 254
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ObservedContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 255
    return v0

    .line 258
    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 259
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to insert rows into "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "observed_contacts"

    aput-object v2, v0, v1

    .line 314
    return-object v0
.end method

.method public static b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE observed_contacts (_id INTEGER PRIMARY KEY,contact_id INT,timestamp INT,signature INT);"

    aput-object v2, v0, v1

    .line 324
    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/katana/provider/ObservedContactsProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 289
    iget-object v0, p0, Lcom/facebook/katana/provider/ObservedContactsProvider;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 290
    sget-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 292
    sget-object v2, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTENT:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 293
    const-string v0, "observed_contacts"

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 301
    :goto_0
    if-lez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ObservedContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 304
    :cond_0
    return v0

    .line 294
    :cond_1
    sget-object v2, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTACT_ID:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 295
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    const-string v2, "observed_contacts"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 182
    sget-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 183
    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTENT:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTACT_ID:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 185
    :cond_0
    const-string v0, "vnd.android.cursor.item/vnd.com.facebook.katana.provider.observed_contacts"

    return-object v0

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 194
    new-array v0, v2, [Landroid/content/ContentValues;

    aput-object p2, v0, v3

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/provider/ObservedContactsProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/util/List;)I

    move-result v0

    .line 201
    invoke-static {v2, v0}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 202
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 204
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ObservedContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/provider/ObservedContactsProvider;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 146
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 148
    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 151
    sget-object v2, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTENT:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 152
    const-string v1, "observed_contacts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 154
    const-string v1, "contact_id ASC"

    .line 167
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v7, v1

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/provider/ObservedContactsProvider;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ObservedContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 176
    return-object v0

    .line 155
    :cond_0
    sget-object v2, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTACT_ID:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 156
    const-string v1, "observed_contacts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "contact_id="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcom/facebook/katana/provider/ObservedContactsProvider;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 160
    const-string v1, "contact_id ASC"

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v7, p5

    .line 170
    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v0, p0, Lcom/facebook/katana/provider/ObservedContactsProvider;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 268
    sget-object v0, Lcom/facebook/katana/provider/ObservedContactsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 269
    sget-object v2, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTENT:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 270
    const-string v0, "observed_contacts"

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 279
    :goto_0
    if-lez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ObservedContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 282
    :cond_0
    return v0

    .line 271
    :cond_1
    sget-object v2, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->OBSERVED_CONTACTS_CONTACT_ID:Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ObservedContactsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    const-string v2, "observed_contacts"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, p2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 276
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
