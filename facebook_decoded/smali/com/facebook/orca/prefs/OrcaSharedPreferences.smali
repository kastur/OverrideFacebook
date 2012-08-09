.class public Lcom/facebook/orca/prefs/OrcaSharedPreferences;
.super Ljava/lang/Object;
.source "OrcaSharedPreferences.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final k:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Landroid/content/SharedPreferences;

.field private final d:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "databaseLock"
    .end annotation
.end field

.field private i:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g:Ljava/lang/Object;

    .line 69
    const-string v0, "OrcaSharedPreferences.ctor"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 70
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 71
    invoke-static {}, Lcom/google/common/collect/Maps;->d()Ljava/util/TreeMap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    .line 72
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->f:Ljava/util/Map;

    .line 74
    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$1;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 80
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Z

    if-eqz v0, :cond_0

    .line 453
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :goto_0
    return-void

    .line 455
    :cond_0
    monitor-exit p0

    .line 458
    new-instance v0, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 460
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 461
    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/Object;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 466
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 464
    :cond_1
    invoke-virtual {v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    goto :goto_1
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    .line 317
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 320
    sget-object v4, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->k:Ljava/lang/Object;

    if-ne v0, v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :goto_1
    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 323
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 330
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/util/Map;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 345
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 346
    if-eqz v1, :cond_1

    .line 347
    invoke-interface {v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    goto :goto_0

    .line 351
    :cond_2
    return-void
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->k:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x2

    .line 110
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v2, v4

    const-string v0, "type"

    aput-object v0, v2, v5

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 117
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 120
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 126
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 130
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :pswitch_4
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private e()V
    .locals 5

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    new-instance v4, Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/Object;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 164
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g()V

    .line 165
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$3;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 360
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 361
    return-void
.end method

.method private g()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    monitor-exit p0

    .line 441
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v4

    .line 370
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 373
    iget-object v5, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g:Ljava/lang/Object;

    monitor-enter v5

    .line 374
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 377
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    :try_start_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 380
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 382
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 383
    sget-object v8, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->k:Ljava/lang/Object;

    if-ne v0, v8, :cond_1

    .line 384
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "preferences"

    const-string v9, "key = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v11

    invoke-virtual {v0, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 408
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 439
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 441
    :catchall_2
    move-exception v0

    monitor-exit v5

    throw v0

    .line 371
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :cond_1
    :try_start_6
    const-string v8, "key"

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 388
    const-string v1, "type"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v1, "value"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 390
    :cond_3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 391
    const-string v1, "type"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string v1, "value"

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    .line 393
    :cond_5
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 394
    const-string v1, "type"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const-string v1, "value"

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 396
    :cond_6
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 397
    const-string v1, "type"

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string v1, "value"

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 399
    :cond_7
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 400
    const-string v1, "type"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v1, "value"

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_2

    .line 406
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 408
    :try_start_7
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 412
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 413
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 414
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 417
    sget-object v4, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->k:Ljava/lang/Object;

    if-ne v0, v4, :cond_a

    .line 418
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 420
    :cond_a
    if-eqz v0, :cond_9

    .line 421
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 422
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 423
    :cond_b
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_c

    .line 424
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 425
    :cond_c
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_d

    .line 426
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 427
    :cond_d
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_e

    .line 428
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v2, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 429
    :cond_e
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_9

    .line 430
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 435
    :cond_f
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 439
    :cond_10
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Z

    .line 441
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->i:Z

    const-string v1, "OrcaSharedPreferences used before initialized"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 482
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 269
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    :cond_0
    monitor-exit p0

    return p2

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 275
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p2

    :cond_0
    monitor-exit p0

    return-wide p2

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    .line 256
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/Set;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 287
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/prefs/PrefKey;->a(Lcom/facebook/orca/common/util/TypedKey;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 292
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 5

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    const-string v2, "orca:OrcaSharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pref: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .parameter

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->f:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/orca/prefs/PrefsDbOpenHelper;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    const-string v0, "OrcaSharedPreferences.initialize"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 92
    iput-object p2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Landroid/content/SharedPreferences;

    .line 93
    invoke-virtual {p1}, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->i:Z

    .line 95
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d()V

    .line 96
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e()V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 471
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 472
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 473
    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 474
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 477
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 478
    return-void
.end method

.method public final declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 263
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    :cond_0
    monitor-exit p0

    return p2

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    .line 297
    new-instance v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    return-object v0
.end method

.method public final declared-synchronized b(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
