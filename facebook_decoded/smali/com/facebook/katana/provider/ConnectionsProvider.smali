.class public Lcom/facebook/katana/provider/ConnectionsProvider;
.super Landroid/content/ContentProvider;
.source "ConnectionsProvider.java"


# static fields
.field static final a:Ljava/lang/String;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Landroid/content/UriMatcher;


# instance fields
.field private r:Lcom/facebook/katana/provider/FacebookDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE connections (_id INTEGER PRIMARY KEY,user_id INT UNIQUE,display_name TEXT,connection_type INT NOT NULL DEFAULT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",user_image_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,user_image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BLOB,hash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->l:Ljava/lang/String;

    .line 239
    const-string v1, "CREATE VIEW %1$s AS SELECT %2$s.%5$s AS %5$s, %2$s.%6$s AS %6$s, %2$s.%7$s AS %7$s, %2$s.%8$s AS %8$s, %2$s.%9$s AS %9$s, %2$s.%10$s AS %10$s, %2$s.%11$s AS %11$s, %3$s.%12$s AS %12$s, %3$s.%13$s AS %13$s, %3$s.%14$s AS %14$s, %3$s.%15$s AS %15$s, %3$s.%16$s AS %16$s, %3$s.%17$s AS %17$s, %3$s.%18$s AS %18$s, %3$s.%19$s AS %19$s FROM %2$s LEFT OUTER JOIN %3$s ON %2$s.%6$s=%3$s.%6$s WHERE %2$s.%8$s=%4$d;"

    const/16 v2, 0x13

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "friends"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "connections"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "friends_data"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "user_id"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "connection_type"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "user_image_url"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "user_image"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "first_name"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "last_name"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "cell"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "other"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "email"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "birthday_month"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "birthday_day"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "birthday_year"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->a:Ljava/lang/String;

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTIONS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTIONS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->c:Landroid/net/Uri;

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIEND_UID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIEND_UID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->e:Landroid/net/Uri;

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->f:Landroid/net/Uri;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_BIRTHDAYS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_BIRTHDAYS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->g:Landroid/net/Uri;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->h:Landroid/net/Uri;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGE_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGE_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->i:Landroid/net/Uri;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->j:Landroid/net/Uri;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.facebook.katana.provider.ConnectionsProvider/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    iget-object v2, v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    .line 345
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->q:Landroid/content/UriMatcher;

    .line 347
    invoke-static {}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->values()[Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    sget-object v5, Lcom/facebook/katana/provider/ConnectionsProvider;->q:Landroid/content/UriMatcher;

    const-string v6, "com.facebook.katana.provider.ConnectionsProvider"

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v3

    invoke-virtual {v5, v6, v4, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    new-instance v0, Lcom/facebook/katana/provider/ConnectionsProvider$1;

    invoke-direct {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->m:Ljava/util/HashMap;

    .line 362
    new-instance v0, Lcom/facebook/katana/provider/ConnectionsProvider$2;

    invoke-direct {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$2;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->n:Ljava/util/HashMap;

    .line 379
    new-instance v0, Lcom/facebook/katana/provider/ConnectionsProvider$3;

    invoke-direct {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$3;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->o:Ljava/util/HashMap;

    .line 387
    new-instance v0, Lcom/facebook/katana/provider/ConnectionsProvider$4;

    invoke-direct {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->p:Ljava/util/Set;

    .line 398
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 278
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 983
    const-string v0, "user_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "friends inserts must contain a uid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_0
    const-string v0, "connection_type"

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    invoke-static {p2}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/content/ContentValues;)Lcom/facebook/katana/util/Tuple;

    move-result-object v1

    .line 990
    iget-object v0, v1, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentValues;

    iget-object v1, v1, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/ContentValues;

    .line 991
    const/4 v4, 0x0

    .line 993
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 996
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 997
    const-string v5, "connections"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 999
    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    move v0, v3

    .line 1004
    :goto_0
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1005
    const-string v4, "friends_data"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1007
    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    move v0, v3

    .line 1011
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1021
    if-eqz v0, :cond_2

    .line 1022
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->e:Landroid/net/Uri;

    const-string v1, "user_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1026
    :goto_1
    return-object v0

    .line 1012
    :catch_0
    move-exception v0

    .line 1015
    :try_start_1
    const-string v1, "Error on inserting friends"

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2
    move-object v0, v2

    .line 1026
    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/ProfileImage;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 935
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 936
    invoke-static {p4, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 937
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/katana/util/FileUtils;->a(Ljava/io/File;)[B

    move-result-object v1

    .line 939
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 940
    const-string v3, "user_image"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 941
    const-string v3, "user_image_url"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->c:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 943
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 945
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 947
    invoke-static {p0, p1, p2, v1}, Lcom/facebook/katana/platform/PlatformStorage;->a(Landroid/content/Context;J[B)V

    .line 949
    :cond_0
    new-instance v1, Lcom/facebook/katana/binding/ProfileImage;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/facebook/katana/binding/ProfileImage;-><init>(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 878
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const-string v1, "user_image_url"

    aput-object v1, v2, v0

    .line 880
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->e:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 883
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 885
    const-string v1, "user_image_url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 886
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    move-wide v1, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 888
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method private static a(Landroid/content/ContentValues;)Lcom/facebook/katana/util/Tuple;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 963
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 965
    invoke-virtual {p0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 966
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 967
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->m:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 968
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 971
    :cond_1
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->p:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 972
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_2
    new-instance v0, Lcom/facebook/katana/util/Tuple;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1101
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1064
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "connections"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "friends_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "search_results"

    aput-object v2, v0, v1

    .line 1069
    return-object v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1033
    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1034
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pages inserts must contain a id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_0
    const-string v1, "connection_type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1038
    if-nez v1, :cond_1

    .line 1039
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pages inserts must contain a connection type, and it must be an integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pages inserts must be PAGE_ADMIN or PAGE_FAN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_2
    const-string v1, "connections"

    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1051
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 1052
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->i:Landroid/net/Uri;

    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1056
    :cond_3
    return-object v0
.end method

.method public static b(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 897
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "user_id"

    aput-object v1, v2, v0

    const-string v0, "display_name"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v1, "user_image_url"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "connection_type"

    aput-object v1, v2, v0

    .line 903
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->i:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 907
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    const-string v0, "connection_type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 909
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 910
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    const-string v1, "user_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "display_name"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "user_image_url"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 918
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method static b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1077
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "friends"

    aput-object v2, v0, v1

    .line 1080
    return-object v0
.end method

.method public static c()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1088
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE TABLE friends_data (_id INTEGER PRIMARY KEY,user_id INT UNIQUE,first_name TEXT,last_name TEXT,cell TEXT,other TEXT,email TEXT,birthday_month INT,birthday_day INT,birthday_year INT);"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE TABLE search_results (_id INTEGER PRIMARY KEY,user_id INT,display_name TEXT,user_image_url TEXT);"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1093
    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 594
    .line 597
    iget-object v0, p0, Lcom/facebook/katana/provider/ConnectionsProvider;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 599
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->q:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 600
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 602
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 603
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 605
    :try_start_0
    array-length v6, p2

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, p2, v2

    .line 609
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_1

    .line 610
    invoke-direct {p0, v4, v7}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 614
    add-int/lit8 v1, v1, 0x1

    .line 605
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 619
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 627
    if-eqz v1, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 630
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 633
    :cond_2
    if-lez v0, :cond_3

    .line 634
    const-string v2, "Failed call to friendsInsert"

    const-string v4, "Failed friendsInsert on %d rows"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_3
    :goto_2
    return v1

    .line 621
    :catch_0
    move-exception v0

    .line 622
    :try_start_1
    const-string v1, "Error in bulk insert friends"

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 637
    :cond_4
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 638
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 640
    :try_start_2
    array-length v6, p2

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_3
    if-ge v2, v6, :cond_6

    aget-object v7, p2, v2

    .line 644
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_6

    .line 645
    invoke-static {v4, v7}, Lcom/facebook/katana/provider/ConnectionsProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 649
    add-int/lit8 v1, v1, 0x1

    .line 640
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 651
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 654
    :cond_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 659
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 662
    if-eqz v1, :cond_7

    .line 663
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 666
    :cond_7
    if-lez v0, :cond_3

    .line 667
    const-string v2, "Failed call to pagesInsert"

    const-string v4, "Failed pagesInsert on %d rows"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 656
    :catch_1
    move-exception v0

    .line 657
    :try_start_3
    const-string v1, "Error in bulk insert pages"

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 659
    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 671
    :cond_8
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 672
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 674
    :try_start_4
    array-length v5, p2

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_5
    if-ge v2, v5, :cond_a

    aget-object v6, p2, v2

    .line 675
    const-string v7, "search_results"

    const-string v8, "user_id"

    invoke-virtual {v4, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 676
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    .line 677
    add-int/lit8 v1, v1, 0x1

    .line 674
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 679
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 682
    :cond_a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 687
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 690
    if-eqz v1, :cond_b

    .line 691
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 694
    :cond_b
    if-lez v0, :cond_3

    .line 695
    const-string v2, "Failed insert into SEARCH_RESULTS_TABLE"

    const-string v4, "Failed on %d rows"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 684
    :catch_2
    move-exception v0

    .line 685
    :try_start_5
    const-string v1, "Error in bulk insert of search results"

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 687
    :catchall_2
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 700
    :cond_c
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

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 824
    iget-object v0, p0, Lcom/facebook/katana/provider/ConnectionsProvider;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 826
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->q:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 828
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTIONS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 832
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 834
    :try_start_0
    const-string v0, "connections"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 835
    const-string v1, "friends_data"

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 836
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 846
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 848
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 849
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 850
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->h:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 854
    :cond_1
    if-le v0, v1, :cond_3

    .line 862
    :cond_2
    :goto_0
    return v0

    .line 837
    :catch_0
    move-exception v0

    .line 840
    :try_start_1
    const-string v1, "Error on deleting connections/friends"

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    move v0, v1

    .line 854
    goto :goto_0

    .line 855
    :cond_4
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 856
    const-string v0, "search_results"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 858
    if-lez v0, :cond_2

    .line 859
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 864
    :cond_5
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
    .line 537
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->q:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 539
    if-lez v0, :cond_0

    .line 542
    const-string v0, "vnd.android.cursor.item/vnd.com.facebook.katana.provider.friends"

    return-object v0

    .line 544
    :cond_0
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
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/facebook/katana/provider/ConnectionsProvider;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 555
    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->q:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 557
    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 558
    invoke-direct {p0, v0, p2}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_4

    .line 562
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 563
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 588
    :goto_0
    return-object v0

    .line 567
    :cond_0
    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 568
    invoke-static {v0, p2}, Lcom/facebook/katana/provider/ConnectionsProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_4

    .line 572
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 573
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->h:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 577
    :cond_1
    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 578
    const-string v2, "search_results"

    const-string v3, "display_name"

    invoke-virtual {v0, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 579
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 582
    :cond_2
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_3
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

    .line 587
    :cond_4
    const-string v0, "Single row insert failed"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to insert row into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 588
    goto/16 :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/provider/ConnectionsProvider;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    .line 407
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

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x2

    .line 414
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 418
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->q:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 420
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTIONS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 421
    const-string v1, "connections"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 422
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 423
    const-string v1, "display_name ASC"

    move-object v8, v5

    .line 522
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v7, v1

    .line 528
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/provider/ConnectionsProvider;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 530
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 531
    return-object v0

    .line 424
    :cond_0
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 425
    const-string v1, "connections"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "user_id="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 427
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 428
    const-string v1, "display_name ASC"

    move-object v8, v5

    goto :goto_0

    .line 429
    :cond_1
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 430
    const-string v1, "friends"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 431
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 432
    const-string v1, "display_name ASC"

    move-object v8, v5

    goto :goto_0

    .line 433
    :cond_2
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIEND_UID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 434
    const-string v1, "friends"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "user_id="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 436
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 437
    const-string v1, "display_name ASC"

    move-object v8, v5

    goto/16 :goto_0

    .line 438
    :cond_3
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 439
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    const-string v2, "friends"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 441
    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 442
    const-string v2, "display_name LIKE "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 444
    const-string v8, "15"

    .line 445
    const-string v1, "display_name ASC"

    goto/16 :goto_0

    .line 446
    :cond_4
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_BIRTHDAYS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_7

    .line 455
    new-instance v4, Ljava/util/HashMap;

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->n:Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 457
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 460
    invoke-virtual {v1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-gt v6, v2, :cond_5

    .line 461
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    .line 470
    :goto_2
    if-eqz v1, :cond_6

    .line 471
    const-string v1, "normalized_birthday_day"

    const-string v2, "CASE WHEN (friends.birthday_month=2 AND            friends.birthday_day=29) THEN 28      ELSE friends.birthday_day END AS normalized_birthday_day"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :goto_3
    const-string v1, "friends"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 482
    const-string v1, "birthday_month!=-1 AND birthday_day!=-1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 485
    const-string v1, "display_name ASC"

    move-object v8, v5

    .line 486
    goto/16 :goto_0

    .line 465
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    .line 466
    goto :goto_2

    .line 477
    :cond_6
    const-string v1, "normalized_birthday_day"

    const-string v2, "birthday_day"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 486
    :cond_7
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_8

    .line 487
    const-string v1, "connections"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 488
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 489
    const-string v1, "(%1$s=%2$d OR %1$s=%3$d)"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v6, "connection_type"

    aput-object v6, v4, v3

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v1, v4}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 492
    const-string v1, "display_name ASC"

    move-object v8, v5

    goto/16 :goto_0

    .line 493
    :cond_8
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGE_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_9

    .line 494
    const-string v1, "connections"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 495
    const-string v1, "%1$s=%2$s AND (%3$s=%4$d OR %3$s=%5$d)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "user_id"

    aput-object v6, v4, v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "connection_type"

    aput-object v2, v4, v8

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    const/4 v2, 0x4

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 499
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 500
    const-string v1, "display_name ASC"

    move-object v8, v5

    goto/16 :goto_0

    .line 501
    :cond_9
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v4

    if-ne v1, v4, :cond_a

    .line 502
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 503
    const-string v4, "connections"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 504
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 505
    const-string v4, "(%1$s=%2$d OR %1$s=%3$d)"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "connection_type"

    aput-object v7, v6, v3

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v4, v6}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 508
    const-string v2, " AND display_name LIKE "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 510
    const-string v8, "15"

    .line 511
    const-string v1, "display_name ASC"

    goto/16 :goto_0

    .line 512
    :cond_a
    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 513
    const-string v1, "search_results"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 514
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 515
    const-string v1, "_id ASC"

    move-object v8, v5

    goto/16 :goto_0

    .line 517
    :cond_b
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

    :cond_c
    move-object v7, p5

    .line 525
    goto/16 :goto_1

    :cond_d
    move v1, v3

    goto/16 :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 708
    iget-object v0, p0, Lcom/facebook/katana/provider/ConnectionsProvider;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 710
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->q:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 712
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGE_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 714
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 717
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 728
    const-string v2, "connection_type"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 729
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection updates should not touch the connection type column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    const-string v1, "ConnectionsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "URI must have a long argument: uri="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    .line 815
    :cond_1
    :goto_0
    return v0

    .line 732
    :cond_2
    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGE_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 733
    const-string v2, "connection_type"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 734
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v6}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v5, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v5}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page updates must stay PAGE_ADMIN or PAGE_FAN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_3
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_c

    .line 743
    const-string v2, "connections"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "user_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, p2, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 747
    :goto_1
    if-lez v0, :cond_1

    .line 749
    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 750
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 751
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 753
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->h:Landroid/net/Uri;

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 758
    :cond_5
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIEND_UID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherIndex()I

    move-result v0

    if-ne v1, v0, :cond_a

    .line 759
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 768
    const-string v1, "connection_type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 769
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 771
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user updates must not change connection type USER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :catch_1
    move-exception v0

    const-string v0, "NumberFormatException: URI must have a long argument"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uri "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must contain a long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 766
    goto/16 :goto_0

    .line 775
    :cond_6
    invoke-static {p2}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/content/ContentValues;)Lcom/facebook/katana/util/Tuple;

    move-result-object v2

    .line 776
    iget-object v1, v2, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/ContentValues;

    iget-object v2, v2, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/ContentValues;

    .line 779
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 781
    :try_start_2
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-eqz v5, :cond_b

    .line 782
    const-string v5, "connections"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "user_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 786
    :goto_2
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-eqz v5, :cond_7

    .line 787
    const-string v3, "friends_data"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "user_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 793
    if-eqz v1, :cond_7

    if-nez v3, :cond_7

    .line 794
    const-string v5, "user_id"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 795
    const-string v0, "friends_data"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_7
    move v0, v3

    .line 798
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 805
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 808
    if-gtz v1, :cond_8

    if-lez v0, :cond_9

    .line 810
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 811
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 815
    :cond_9
    if-le v1, v0, :cond_1

    move v0, v1

    goto/16 :goto_0

    .line 799
    :catch_2
    move-exception v0

    .line 802
    :try_start_3
    const-string v1, "Error on updating connections/friends"

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 805
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 817
    :cond_a
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

    :cond_b
    move v1, v3

    goto :goto_2

    :cond_c
    move v0, v3

    goto/16 :goto_1
.end method
