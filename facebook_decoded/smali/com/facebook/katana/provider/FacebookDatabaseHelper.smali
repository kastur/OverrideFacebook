.class public Lcom/facebook/katana/provider/FacebookDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FacebookDatabaseHelper.java"


# static fields
.field private static a:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

.field private static e:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static f:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static g:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static h:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static i:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static j:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static k:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static l:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static m:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static n:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static o:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static p:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static q:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static r:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static s:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static t:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static u:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static v:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

.field private static w:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$1;

    const-string v1, "recreateUserValuesTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->e:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 163
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$2;

    const-string v1, "recreateNotificationsTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 172
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$3;

    const-string v1, "recreatePushNotificationsTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->g:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 181
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$4;

    const-string v1, "recreateVaultImagesTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->h:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 191
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$5;

    const-string v1, "recreateUserStatusTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->i:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 200
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$6;

    const-string v1, "recreateObservedContactsTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->j:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 219
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$7;

    const-string v1, "recreateMailboxTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->k:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 249
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$8;

    const-string v1, "recreateConnectionTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->l:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 273
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$9;

    const-string v1, "recreateActionLogTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->m:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 293
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$10;

    const-string v1, "recreatePagesTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->n:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 313
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$11;

    const-string v1, "recreateCacheTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->o:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 333
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$12;

    const-string v1, "recreatePhotosTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->p:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 360
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$13;

    const-string v1, "recreateEventsTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->q:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 381
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$14;

    const-string v1, "recreateLoggingTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 402
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$15;

    const-string v1, "recreateKeyValueTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->s:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 421
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$16;

    const-string v1, "migrateFriendsTable"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$16;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->t:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 471
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$17;

    const-string v1, "forceFriendsSync"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->u:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 485
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$18;

    const-string v1, "invalidateUriMap"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$18;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->v:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    .line 498
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$19;

    const-string v1, "killChatTables"

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$19;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->w:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    const-string v0, "fb.db"

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->c:Z

    .line 76
    iput-object p1, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->d:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;
    .locals 2
    .parameter

    .prologue
    .line 87
    const-class v1, Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit v1

    return-object v0

    .line 90
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 91
    sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/provider/FacebookDatabaseHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 734
    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    iget-boolean v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->c:Z

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a()V

    .line 739
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b()Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->u:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 711
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 712
    sget-object v1, Lcom/facebook/katana/provider/UserStatusesProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 713
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 714
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 715
    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 716
    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 718
    sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 719
    sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 720
    sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 721
    sget-object v1, Lcom/facebook/katana/provider/NotificationsProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 722
    sget-object v1, Lcom/facebook/katana/provider/EventsProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 723
    sget-object v1, Lcom/facebook/katana/provider/PagesProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 725
    sget-object v1, Lcom/facebook/katana/provider/CacheProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 726
    sget-object v1, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/FileUtils;->a(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 748
    monitor-enter p0

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    iget-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 755
    :cond_0
    :try_start_1
    const-string v0, "UPGRADE"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->c:Z

    .line 760
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->e:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 512
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 513
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->g:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 514
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->i:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 515
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->k:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 516
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->l:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 517
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->n:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 518
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->p:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 519
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->q:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 520
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 521
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->s:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 522
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->o:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 523
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->m:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 524
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->h:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 525
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->j:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 526
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 700
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 531
    const/16 v1, 0x2d

    if-gt p2, v1, :cond_1

    .line 533
    invoke-virtual {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 673
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 674
    iget-object v2, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/provider/FacebookDatabaseHelper$20;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$20;-><init>(Lcom/facebook/katana/provider/FacebookDatabaseHelper;J)V

    invoke-static {v2, v3}, Lcom/facebook/katana/util/FileUtils;->a(Ljava/lang/String;Lcom/facebook/katana/util/FileUtils$deleteFilesCallback;)V

    .line 689
    return-void

    .line 535
    :cond_1
    const/4 v1, 0x0

    .line 537
    :try_start_0
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 540
    const/4 v2, 0x0

    .line 542
    const/16 v4, 0x2e

    if-gt p2, v4, :cond_2

    .line 543
    sget-object v4, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->k:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_2
    const/16 v4, 0x30

    if-gt p2, v4, :cond_3

    .line 549
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->l:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->k:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->i:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v0

    .line 555
    :cond_3
    const/16 v4, 0x31

    if-gt p2, v4, :cond_4

    .line 556
    sget-object v4, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->q:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_4
    const/16 v4, 0x32

    if-gt p2, v4, :cond_1c

    .line 560
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->l:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    :goto_1
    const/16 v2, 0x33

    if-gt p2, v2, :cond_5

    .line 565
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->q:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_5
    const/16 v2, 0x34

    if-gt p2, v2, :cond_6

    .line 569
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->r:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_6
    const/16 v2, 0x35

    if-gt p2, v2, :cond_7

    .line 573
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->s:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_7
    const/16 v2, 0x38

    if-gt p2, v2, :cond_8

    .line 577
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_8
    const/16 v2, 0x39

    if-gt p2, v2, :cond_9

    .line 581
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->k:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_9
    const/16 v2, 0x3a

    if-gt p2, v2, :cond_a

    .line 585
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->n:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_a
    const/16 v2, 0x3b

    if-gt p2, v2, :cond_b

    .line 589
    sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->o:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_b
    const/16 v2, 0x3c

    if-gt p2, v2, :cond_c

    if-nez v0, :cond_c

    .line 594
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->t:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_c
    const/16 v0, 0x3d

    if-gt p2, v0, :cond_d

    .line 598
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->u:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_d
    const/16 v0, 0x3e

    if-gt p2, v0, :cond_e

    .line 602
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->p:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_e
    const/16 v0, 0x3f

    if-gt p2, v0, :cond_f

    .line 606
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->p:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_f
    const/16 v0, 0x40

    if-gt p2, v0, :cond_10

    .line 610
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->p:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_10
    const/16 v0, 0x41

    if-gt p2, v0, :cond_11

    .line 614
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->p:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_11
    const/16 v0, 0x42

    if-gt p2, v0, :cond_12

    .line 618
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->v:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_12
    const/16 v0, 0x43

    if-gt p2, v0, :cond_13

    .line 622
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->g:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_13
    const/16 v0, 0x44

    if-gt p2, v0, :cond_14

    .line 626
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->m:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_14
    const/16 v0, 0x45

    if-gt p2, v0, :cond_15

    .line 630
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->p:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_15
    const/16 v0, 0x4c

    if-gt p2, v0, :cond_16

    .line 634
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->h:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_16
    const/16 v0, 0x49

    if-gt p2, v0, :cond_17

    .line 638
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->w:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_17
    const/16 v0, 0x4e

    if-gt p2, v0, :cond_18

    .line 642
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->f:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_18
    const/16 v0, 0x4f

    if-gt p2, v0, :cond_19

    .line 646
    sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->j:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_19
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 651
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 652
    invoke-virtual {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v3, v5, v3

    .line 654
    const-wide/16 v5, 0x9c4

    cmp-long v1, v3, v5

    if-lez v1, :cond_1a

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Upgrading from v"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": upgrade db stage "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " took longer than expected ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms)\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1a
    move-object v1, v0

    .line 660
    goto :goto_2

    .line 661
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 662
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Upgrading from "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed. recreating db"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    if-eqz v2, :cond_1b

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-direct {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 661
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    :cond_1c
    move v0, v2

    goto/16 :goto_1
.end method
