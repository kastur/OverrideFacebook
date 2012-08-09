.class public Lcom/facebook/katana/binding/AppSession;
.super Ljava/lang/Object;
.source "AppSession.java"


# static fields
.field private static e:Z

.field private static f:Z

.field private static final g:[Lcom/facebook/katana/binding/AppSession$PreloadStep;

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/AppSession;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static k:Landroid/text/style/TextAppearanceSpan;


# instance fields
.field private A:J

.field private B:Z

.field private C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/binding/AppSession$PreloadStep;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:Landroid/os/PowerManager$WakeLock;

.field private final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/facebook/katana/util/logging/PerformanceMarker;

.field final a:Lcom/facebook/katana/util/ReentrantCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/util/ReentrantCallback",
            "<",
            "Lcom/facebook/katana/binding/AppSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/binding/FacebookStreamContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/binding/FacebookStreamContainer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/facebook/katana/binding/FacebookStreamContainer;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/facebook/katana/binding/ProfileImagesCache;

.field private final o:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookStatus;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/facebook/katana/binding/WorkerThread;

.field private r:Lcom/facebook/katana/model/FacebookSessionInfo;

.field private s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

.field private t:I

.field private u:Landroid/app/PendingIntent;

.field private v:Landroid/app/PendingIntent;

.field private w:Landroid/app/PendingIntent;

.field private x:Landroid/app/PendingIntent;

.field private y:Landroid/app/PendingIntent;

.field private z:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    sput-boolean v2, Lcom/facebook/katana/binding/AppSession;->e:Z

    .line 329
    sput-boolean v2, Lcom/facebook/katana/binding/AppSession;->f:Z

    .line 330
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/katana/binding/AppSession$PreloadStep;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_GATEKEEPERS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_SKELETON:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_BOOKMARKS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_FACEWEB_URI_MAP:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_AUTH_COOKIE_FOR_FW:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/binding/AppSession;->g:[Lcom/facebook/katana/binding/AppSession$PreloadStep;

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    .line 407
    iput-boolean v1, p0, Lcom/facebook/katana/binding/AppSession;->D:Z

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    .line 424
    iput-boolean v1, p0, Lcom/facebook/katana/binding/AppSession;->B:Z

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    .line 426
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    sput-object v0, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    .line 428
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    .line 429
    new-instance v0, Lcom/facebook/katana/util/ReentrantCallback;

    invoke-direct {v0}, Lcom/facebook/katana/util/ReentrantCallback;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    .line 430
    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->b:Ljava/util/Map;

    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->c:Ljava/util/Map;

    .line 434
    new-instance v0, Lcom/facebook/katana/binding/ProfileImagesCache;

    new-instance v1, Lcom/facebook/katana/binding/AppSession$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/binding/AppSession$1;-><init>(Lcom/facebook/katana/binding/AppSession;)V

    invoke-direct {v0, v1}, Lcom/facebook/katana/binding/ProfileImagesCache;-><init>(Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->n:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 461
    new-instance v0, Lcom/facebook/katana/binding/StreamPhotosCache;

    new-instance v1, Lcom/facebook/katana/binding/AppSession$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/binding/AppSession$2;-><init>(Lcom/facebook/katana/binding/AppSession;)V

    invoke-direct {v0, v1}, Lcom/facebook/katana/binding/StreamPhotosCache;-><init>(Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->o:Lcom/facebook/katana/binding/StreamPhotosCache;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    .line 494
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/binding/AppSession;->A:J

    .line 495
    sget-object v0, Lcom/facebook/katana/model/FacebookSessionInfo;->sInvalidSessionInfo:Lcom/facebook/katana/model/FacebookSessionInfo;

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    .line 497
    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSession;->o()V

    .line 498
    return-void
.end method

.method private static A(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 4982
    const-string v0, "extra_composer_setting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4984
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4985
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 4986
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4987
    return-void
.end method

.method private static B(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 4991
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 4992
    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    .line 4993
    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->a()V

    .line 4995
    const-class v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 4997
    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a()V

    .line 4998
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/binding/AppSession;)I
    .locals 1
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    return v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 528
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 529
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    sget-object v1, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSession;

    .line 596
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    const-string v1, "android_beta"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 609
    invoke-static {p0}, Lcom/facebook/katana/model/FacebookAffiliation;->c(Landroid/content/Context;)V

    move-object v0, v7

    .line 613
    :cond_1
    return-object v0

    .line 531
    :cond_2
    invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_6

    .line 534
    :try_start_0
    invoke-static {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v5

    .line 541
    iget-object v0, v5, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionSecret:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 543
    new-instance v0, Lcom/facebook/katana/binding/AppSession;

    invoke-direct {v0}, Lcom/facebook/katana/binding/AppSession;-><init>()V

    .line 546
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    const-string v2, "rid"

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v2, "sid"

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const/16 v2, 0xc8

    const-string v3, "Ok"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :cond_3
    :goto_1
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 560
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    sget-object v1, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSession;

    .line 565
    :goto_2
    if-eqz v0, :cond_0

    .line 575
    iget-object v1, v0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v1

    .line 576
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 578
    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V

    .line 585
    :cond_4
    iget-object v1, v0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 586
    invoke-static {p0}, Lcom/facebook/katana/service/method/GraphApiExchangeSession;->a(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    sget-object v1, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sput-object v7, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v0, v7

    .line 562
    goto :goto_2

    :cond_6
    move-object v0, v7

    .line 591
    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 643
    :try_start_0
    const-string v1, "last_username"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 648
    :goto_0
    return-object v0

    .line 646
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2217
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2218
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2219
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2220
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2221
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2222
    const-string v2, "uid"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2223
    const-string v2, "aid"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2224
    const-string v2, "pid"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2225
    const-string v2, "fbid"

    invoke-virtual {v1, v2, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2226
    const-string v2, "uri"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2228
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2229
    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4681
    const/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;JII)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;JII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1820
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1821
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1822
    const-string v2, "type"

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1823
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1826
    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    const-string v2, "start"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1828
    const-string v2, "limit"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1830
    if-eqz p3, :cond_0

    .line 1832
    const-string v2, "pid"

    invoke-static {p3}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1834
    :cond_0
    const-string v2, "uid"

    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1836
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1837
    return-object v1
.end method

.method static synthetic a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/katana/binding/AppSession;->f(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 2824
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    const-string v1, "sid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSession;

    .line 2825
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 2826
    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2877
    :goto_0
    return-void

    .line 2829
    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2830
    sparse-switch v1, :sswitch_data_0

    .line 2860
    const/16 v0, 0x41

    if-ne v1, v0, :cond_1

    .line 2862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2864
    const-string v0, " reqIntent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2866
    const-string v3, " reqIntent.extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    const-string v0, " mSessionMap: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2869
    const-string v0, ", "

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/katana/util/StringUtils$StringProcessor;[Ljava/lang/Object;)V

    .line 2870
    const-string v0, "photoupload_stuck"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    :cond_1
    const-string v0, "onServiceOperationComplete"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2839
    :sswitch_0
    invoke-static {p0, v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 2840
    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2843
    :cond_2
    const-string v0, "onServiceOperationComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2850
    :sswitch_1
    invoke-static {p0, v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 2851
    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2854
    :cond_3
    const-string v0, "onServiceOperationComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2866
    :cond_4
    const-string v0, ""

    goto/16 :goto_1

    .line 2830
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0xcd -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3823
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3825
    packed-switch v0, :pswitch_data_0

    .line 3830
    :goto_0
    return-void

    .line 3827
    :pswitch_0
    const-string v0, "rid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;II)Z

    goto :goto_0

    .line 3825
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2889
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    const-string v1, "sid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSession;

    .line 2890
    if-eqz v0, :cond_0

    .line 2891
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 2893
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 504
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v2, "sid"

    iget-object v3, p1, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v2, "session_key"

    iget-object v3, p1, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v2, "uid"

    iget-object v3, p1, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 510
    invoke-direct {p1, p0, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 511
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookStatus;ILandroid/graphics/Bitmap;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4492
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 4493
    new-instance v7, Landroid/content/ComponentName;

    const-class v0, Lcom/facebook/katana/FacebookWidgetProvider;

    invoke-direct {v7, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4494
    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4591
    :goto_0
    monitor-exit p0

    return-void

    .line 4498
    :cond_0
    :try_start_1
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f03011a

    invoke-direct {v8, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4500
    const-string v0, "fb://feed"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4501
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4502
    const-string v1, "openNewsfeed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4503
    const v1, 0x7f080312

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4507
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/WidgetActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4508
    const-string v1, "com.facebook.katana.widget.sharebutton"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4509
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4510
    const v1, 0x7f080315

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/WidgetActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4515
    const-string v1, "com.facebook.katana.widget.edit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4516
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4517
    const v1, 0x7f080314

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4521
    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    iget-object v9, v0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    .line 4522
    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookStatus;->b()Ljava/lang/String;

    move-result-object v0

    .line 4523
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4524
    if-eqz v0, :cond_1

    .line 4525
    const-string v1, " "

    invoke-virtual {v10, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4528
    :cond_1
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->k:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_2

    .line 4529
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4530
    const/high16 v1, 0x4160

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v3, v1

    .line 4531
    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 4532
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession;->k:Landroid/text/style/TextAppearanceSpan;

    .line 4536
    :cond_2
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->k:Landroid/text/style/TextAppearanceSpan;

    const/4 v1, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4537
    const v0, 0x7f080318

    invoke-virtual {v8, v0, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4540
    const v0, 0x7f080319

    sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookStatus;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {p1, v1, v2, v3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4542
    if-eqz p4, :cond_3

    .line 4543
    const v0, 0x7f080317

    invoke-virtual {v8, v0, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4548
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 4550
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4552
    const v1, 0x7f080316

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4557
    if-nez p3, :cond_4

    .line 4559
    const v0, 0x7f08031a

    const v1, 0x7f02014f

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4574
    :goto_2
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p3, v0, :cond_5

    .line 4576
    const v0, 0x7f08031b

    const v1, 0x7f020149

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4590
    :goto_3
    invoke-virtual {v6, v7, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 4492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4545
    :cond_3
    const v0, 0x7f080317

    const v1, 0x7f02018e

    :try_start_2
    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 4562
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.facebook.katana.service."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4564
    const-string v1, "type"

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4565
    const-string v1, "sid"

    sget-object v2, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4566
    const v1, 0x7f08031a

    const v2, 0x7f020270

    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4568
    const v1, 0x7f08031a

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2

    .line 4579
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4580
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.facebook.katana.service."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4581
    const-string v1, "type"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4582
    const-string v1, "sid"

    sget-object v2, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4583
    const v1, 0x7f08031b

    const v2, 0x7f02026f

    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4585
    const v1, 0x7f08031b

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4745
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 4746
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4747
    const/4 v1, 0x1

    const-string v2, "FacebookService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    .line 4750
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4751
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4752
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4753
    monitor-exit p0

    return-void

    .line 4751
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 4745
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1092
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;I)V

    .line 1093
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2900
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2901
    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    .line 2904
    check-cast p6, Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-direct {p0, p1, p6}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Lcom/facebook/katana/model/FacebookSessionInfo;)V

    .line 2906
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookAffiliation;->b(Landroid/content/Context;)V

    .line 2920
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2921
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSessionListener;->a(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 2912
    :cond_0
    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    .line 2913
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2916
    :cond_1
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2923
    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4637
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4638
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    .line 4639
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionSecret:Ljava/lang/String;

    .line 4640
    if-eqz v0, :cond_0

    .line 4641
    const-string v1, "ApiMethod.secret"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4644
    :cond_0
    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v0, v1, :cond_1

    invoke-static {p3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4645
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4646
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4648
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->v(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/model/FacebookStatus;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookStatus;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 4761
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 4763
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4765
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4766
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4768
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4770
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4773
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 4774
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4776
    :cond_2
    monitor-exit p0

    return-void

    .line 4761
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/binding/AppSession;->D:Z

    .line 1226
    return-void
.end method

.method private static a(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 4624
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4625
    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1796
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1797
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 629
    invoke-static {p0, p1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2174
    const/16 v2, 0x4c

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    return-object v0
.end method

.method private b(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4274
    if-ne p2, v4, :cond_0

    invoke-static {p1}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4295
    :goto_0
    return-void

    .line 4278
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4279
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 4280
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4281
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4283
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4285
    const-string v2, "type"

    const/16 v3, 0xca

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4286
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4287
    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4288
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    .line 4289
    if-ne p2, v4, :cond_2

    .line 4290
    const p2, 0xa4cb800

    .line 4293
    :cond_2
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2964
    const-string v3, "type"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2969
    invoke-static/range {p5 .. p5}, Lcom/facebook/katana/service/method/ApiMethod;->a(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2970
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "session_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/facebook/katana/binding/AppSession;->B:Z

    if-nez v4, :cond_0

    .line 2979
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->k(Landroid/content/Context;)V

    .line 2981
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/katana/binding/AppSession;->B:Z

    .line 2986
    :cond_0
    const-string v4, "rid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2987
    if-eqz v5, :cond_1

    .line 2988
    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    :cond_1
    sparse-switch v3, :sswitch_data_0

    .line 3798
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 3808
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/service/FacebookService;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3809
    sget-object v3, Lcom/facebook/katana/service/FacebookService;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 3811
    :cond_3
    return-void

    :sswitch_0
    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 2993
    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0

    .line 3003
    :sswitch_1
    sget-object v3, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3004
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/facebook/katana/provider/UserValuesManager;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 3010
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/provider/UserValuesManager;->g(Landroid/content/Context;)V

    .line 3013
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 3014
    const-string v5, "type"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3015
    const/16 v6, 0x50

    if-ne v5, v6, :cond_5

    .line 3016
    const-string v5, "rid"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3017
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3018
    const/16 v6, 0x190

    const-string v7, "Canceled"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3025
    :cond_6
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3026
    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSessionListener;->b()V

    goto :goto_2

    .line 3028
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->w(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3033
    :sswitch_2
    check-cast p6, Ljava/util/List;

    .line 3034
    const/4 v9, 0x0

    .line 3035
    const-string v3, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 3036
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 3039
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    if-nez v7, :cond_8

    .line 3040
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/model/FacebookPost;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    iget-wide v5, p0, Lcom/facebook/katana/binding/AppSession;->A:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    .line 3041
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/model/FacebookPost;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    iput-wide v3, p0, Lcom/facebook/katana/binding/AppSession;->A:J

    .line 3047
    :cond_8
    if-nez v7, :cond_b

    .line 3048
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-nez v3, :cond_9

    .line 3049
    new-instance v3, Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-direct {v3}, Lcom/facebook/katana/binding/FacebookStreamContainer;-><init>()V

    iput-object v3, p0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 3051
    :cond_9
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    const-string v4, "limit"

    const/16 v5, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v4, "app_value"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v3, v0, v4}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/util/List;I)V

    .line 3054
    iget-object v9, p0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 3067
    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3068
    const-string v4, "uid"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const-string v4, "start"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const-string v4, "end"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const-string v4, "limit"

    const/16 v5, 0x1e

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v4, "app_value"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;[JILcom/facebook/katana/binding/FacebookStreamContainer;)V

    goto :goto_4

    .line 3056
    :cond_b
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->b:Ljava/util/Map;

    const/4 v4, 0x0

    aget-wide v4, v7, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 3057
    if-nez v3, :cond_c

    .line 3058
    new-instance v3, Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-direct {v3}, Lcom/facebook/katana/binding/FacebookStreamContainer;-><init>()V

    .line 3059
    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->b:Ljava/util/Map;

    const/4 v5, 0x0

    aget-wide v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    :cond_c
    const-string v4, "limit"

    const/16 v5, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v4, "app_value"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v3, v0, v4}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/util/List;I)V

    move-object v9, v3

    goto/16 :goto_3

    .line 3078
    :sswitch_3
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    .line 3079
    const-string v3, "post_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3080
    invoke-static {v3}, Lcom/facebook/katana/binding/FacebookStreamContainer;->b(Ljava/lang/String;)V

    .line 3082
    :cond_d
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3083
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->h(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 3089
    :sswitch_4
    const-string v3, "post_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3090
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_e

    .line 3091
    check-cast p6, Ljava/util/List;

    .line 3093
    invoke-static {v4}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v3

    .line 3094
    if-eqz v3, :cond_e

    .line 3095
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/facebook/katana/model/FacebookPost;->a(Ljava/util/List;)V

    .line 3098
    :cond_e
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3099
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_6

    .line 3105
    :sswitch_5
    new-instance v3, Lcom/facebook/katana/model/FacebookPost$Comment;

    move-object/from16 v4, p6

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v5, v5, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-string v9, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/model/FacebookPost$Comment;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 3109
    const-string v4, "actor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3111
    const-string v4, "actor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/model/FacebookProfile;

    .line 3112
    invoke-virtual {v3, v4}, Lcom/facebook/katana/model/FacebookPost$Comment;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 3120
    :goto_7
    const-string v4, "post_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3121
    const/16 v5, 0xc8

    move/from16 v0, p3

    if-ne v0, v5, :cond_f

    .line 3122
    invoke-static {v4}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v5

    .line 3123
    if-eqz v5, :cond_f

    .line 3124
    invoke-virtual {v5, v3}, Lcom/facebook/katana/model/FacebookPost;->a(Lcom/facebook/katana/model/FacebookPost$Comment;)V

    .line 3127
    :cond_f
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3128
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/facebook/katana/binding/AppSessionListener;->b(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_8

    .line 3115
    :cond_10
    new-instance v4, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v5, v5, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iget-object v7, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v7}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v7

    iget-object v7, v7, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v8}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v8

    iget-object v8, v8, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/facebook/katana/model/FacebookPost$Comment;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_7

    .line 3135
    :sswitch_6
    const-string v3, "post_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3136
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_11

    .line 3137
    invoke-static {v4}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v3

    .line 3138
    if-eqz v3, :cond_11

    .line 3139
    const-string v5, "item_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/facebook/katana/model/FacebookPost;->a(Ljava/lang/String;)V

    .line 3142
    :cond_11
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3143
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/facebook/katana/binding/AppSessionListener;->c(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_9

    .line 3150
    :sswitch_7
    const-string v3, "post_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3151
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_12

    .line 3152
    invoke-static {v4}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v3

    .line 3153
    if-eqz v3, :cond_12

    .line 3154
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/facebook/katana/model/FacebookPost;->a(Z)V

    .line 3157
    :cond_12
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3158
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/facebook/katana/binding/AppSessionListener;->d(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_a

    .line 3164
    :sswitch_8
    const-string v3, "post_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3165
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_13

    .line 3166
    invoke-static {v4}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v3

    .line 3167
    if-eqz v3, :cond_13

    .line 3168
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/facebook/katana/model/FacebookPost;->a(Z)V

    .line 3171
    :cond_13
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3172
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/facebook/katana/binding/AppSessionListener;->e(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_b

    :sswitch_9
    move-object/from16 v9, p6

    .line 3178
    check-cast v9, Lcom/facebook/katana/model/FacebookUserFull;

    .line 3179
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3180
    const-string v4, "uid"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    move-object/from16 v4, p7

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/model/FacebookUserFull;Z)V

    goto :goto_c

    :sswitch_a
    move-object/from16 v8, p6

    .line 3188
    check-cast v8, Lcom/facebook/katana/model/FacebookUser;

    .line 3189
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3190
    const-string v4, "uid"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    move/from16 v4, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/Exception;JLcom/facebook/katana/model/FacebookUser;)V

    goto :goto_d

    .line 3197
    :sswitch_b
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3199
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/facebook/katana/binding/AppSessionListener;->a(I)V

    goto :goto_e

    .line 3206
    :sswitch_c
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_16

    .line 3207
    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/provider/UserValuesManager;->e(Landroid/content/Context;)V

    .line 3208
    check-cast p6, Ljava/util/Map;

    .line 3211
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 3212
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    .line 3213
    iget-wide v4, v3, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    :cond_14
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->n:Lcom/facebook/katana/binding/ProfileImagesCache;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v3, p0, v0, v1}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/Map;)V

    .line 3222
    :cond_15
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;II)V

    .line 3231
    :goto_f
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;II)V

    .line 3232
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3233
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10

    .line 3218
    :cond_16
    const-string v3, "extra_attempt"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 3219
    const/4 v4, 0x3

    if-ge v3, v4, :cond_15

    .line 3220
    const v4, 0x493e0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v4, v3}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;II)V

    goto :goto_f

    .line 3235
    :cond_17
    const-string v3, "release_wake_lock"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3236
    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 3242
    :sswitch_d
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_19

    .line 3243
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3244
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    check-cast p6, Ljava/util/List;

    move-object/from16 v0, p6

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3249
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    .line 3250
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 3252
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->x(Landroid/content/Context;)V

    .line 3254
    :cond_18
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;II)V

    .line 3267
    :goto_11
    const-string v3, "release_wake_lock"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3268
    const/16 v3, 0x51

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 3256
    :cond_19
    const-string v3, "extra_attempt"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 3257
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1a

    .line 3258
    const/16 v4, 0x7530

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v4, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;II)V

    goto :goto_11

    .line 3260
    :cond_1a
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1b

    .line 3261
    const v3, 0x7f0b03d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    :cond_1b
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;II)V

    goto :goto_11

    .line 3274
    :sswitch_e
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_1f

    .line 3275
    check-cast p6, Lcom/facebook/katana/model/FacebookNotifications;

    .line 3276
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/model/FacebookNotifications;->c()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 3281
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 3283
    :cond_1c
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;II)V

    .line 3284
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->G:Lcom/facebook/katana/util/logging/PerformanceMarker;

    if-eqz v3, :cond_1d

    .line 3285
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->G:Lcom/facebook/katana/util/logging/PerformanceMarker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->b(Landroid/content/Context;)V

    .line 3301
    :cond_1d
    :goto_12
    const-string v3, "release_wake_lock"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3302
    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/Integer;)V

    .line 3304
    :cond_1e
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3305
    move/from16 v0, p3

    invoke-virtual {v3, v5, v0}, Lcom/facebook/katana/binding/AppSessionListener;->b(Ljava/lang/String;I)V

    goto :goto_13

    .line 3290
    :cond_1f
    const-string v3, "extra_attempt"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 3291
    const/4 v4, 0x3

    if-ge v3, v4, :cond_20

    invoke-static {}, Lcom/facebook/katana/service/BackgroundDetectionService;->a()Z

    move-result v4

    if-nez v4, :cond_20

    .line 3295
    const v4, 0xea60

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v4, v3}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;II)V

    goto :goto_12

    .line 3297
    :cond_20
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;II)V

    goto :goto_12

    .line 3311
    :sswitch_f
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v3, v4, :cond_2

    .line 3312
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-eq v0, v3, :cond_21

    .line 3315
    const-string v3, "extra_attempt"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 3318
    const/4 v4, 0x3

    if-ge v3, v4, :cond_21

    .line 3319
    const v4, 0x36ee80

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v4, v3}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;II)V

    .line 3325
    :goto_14
    const-string v3, "release_wake_lock"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3326
    const/16 v3, 0x44c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 3322
    :cond_21
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;II)V

    goto :goto_14

    .line 3332
    :sswitch_10
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3333
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->b(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15

    .line 3339
    :sswitch_11
    const-string v3, "uid"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 3340
    const-string v3, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3341
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/binding/AppSessionListener;

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 3342
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V

    goto :goto_16

    .line 3349
    :sswitch_12
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3350
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/facebook/katana/binding/AppSessionListener;->e(I)V

    goto :goto_17

    .line 3357
    :sswitch_13
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3358
    const-string v5, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/facebook/katana/binding/AppSessionListener;->f(I)V

    goto :goto_18

    .line 3365
    :sswitch_14
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3366
    const-string v5, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->c(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_19

    .line 3373
    :sswitch_15
    const-string v3, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3374
    const-string v3, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 3375
    const-string v3, "uid"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 3377
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3378
    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v3, v5, v0, v1}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_1a

    .line 3385
    :sswitch_16
    check-cast p6, Lcom/facebook/katana/model/FacebookPhoto;

    .line 3388
    if-eqz p6, :cond_23

    .line 3389
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v10

    .line 3390
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v11

    .line 3396
    :goto_1b
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_22

    if-eqz v10, :cond_22

    .line 3399
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3400
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3401
    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v6, v7, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;

    .line 3405
    :cond_22
    const-string v3, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3406
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-static/range {v6 .. v11}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3412
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3413
    const-string v6, "upload_id"

    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v6, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "checkin_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v6, "profile_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v14}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;ILcom/facebook/katana/model/FacebookPhoto;JJ)V

    goto :goto_1c

    .line 3392
    :cond_23
    const/4 v10, 0x0

    .line 3393
    const/4 v11, 0x0

    goto :goto_1b

    .line 3424
    :sswitch_17
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3425
    const-string v4, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/facebook/katana/binding/AppSessionListener;->e()V

    goto :goto_1d

    .line 3433
    :sswitch_18
    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3434
    if-eqz v3, :cond_24

    .line 3436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3437
    const-string v4, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3438
    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;

    .line 3440
    :cond_24
    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/model/FacebookPhotoSet;->a(Landroid/content/Context;)V

    .line 3441
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3442
    const-string v5, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->d(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1e

    .line 3450
    :sswitch_19
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3451
    const-string v4, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/facebook/katana/binding/AppSessionListener;->f()V

    goto :goto_1f

    .line 3458
    :sswitch_1a
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3459
    invoke-static {}, Lcom/facebook/katana/binding/AppSessionListener;->g()V

    goto :goto_20

    .line 3466
    :sswitch_1b
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3467
    const-string v4, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p6

    check-cast v8, Ljava/util/List;

    move-object/from16 v4, p7

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_21

    .line 3475
    :sswitch_1c
    const/4 v8, 0x0

    .line 3476
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_25

    .line 3477
    check-cast p6, Lcom/facebook/katana/model/FacebookPhotoComment;

    .line 3478
    new-instance v3, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/katana/model/FacebookProfile;-><init>(Lcom/facebook/katana/model/FacebookUser;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/facebook/katana/model/FacebookPhotoComment;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    move-object/from16 v8, p6

    .line 3480
    :cond_25
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3481
    const-string v4, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/model/FacebookPhotoComment;)V

    goto :goto_22

    .line 3489
    :sswitch_1d
    const-string v3, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3490
    check-cast p6, Lcom/facebook/katana/binding/StreamPhoto;

    .line 3491
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->o:Lcom/facebook/katana/binding/StreamPhotosCache;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v3, v0, v1, v5, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/katana/binding/StreamPhoto;)Lcom/facebook/katana/binding/StreamPhoto;

    .line 3492
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3493
    if-eqz p6, :cond_26

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/binding/StreamPhoto;->g()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_24
    move/from16 v0, p3

    invoke-virtual {v3, v0, v5, v4}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_23

    :cond_26
    const/4 v4, 0x0

    goto :goto_24

    .line 3500
    :sswitch_1e
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3501
    const-string v4, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/facebook/katana/binding/AppSessionListener;->h()V

    goto :goto_25

    .line 3508
    :sswitch_1f
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3509
    const-string v5, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fbid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    move/from16 v0, p3

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;J)V

    goto :goto_26

    .line 3518
    :sswitch_20
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3519
    const-string v4, "aid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "fbid"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    move-object/from16 v4, p6

    check-cast v4, [B

    move/from16 v0, p3

    invoke-virtual {v3, v0, v6, v7, v4}, Lcom/facebook/katana/binding/AppSessionListener;->a(IJ[B)V

    goto :goto_27

    .line 3529
    :sswitch_21
    check-cast p6, Landroid/graphics/Bitmap;

    .line 3530
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3531
    move/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v3, v5, v0, v1}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    goto :goto_28

    .line 3538
    :sswitch_22
    if-nez p6, :cond_27

    .line 3539
    const-string v3, "fbandroid"

    const-string v4, "REQ_DOWNLOAD_USER_IMAGE receives null result"

    invoke-static {v3, v4}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3542
    :cond_27
    const-string v3, "uid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3543
    check-cast p6, Lcom/facebook/katana/binding/ProfileImage;

    .line 3544
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->n:Lcom/facebook/katana/binding/ProfileImagesCache;

    move/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(IJLcom/facebook/katana/binding/ProfileImage;)Lcom/facebook/katana/binding/ProfileImage;

    .line 3545
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 3547
    iget v3, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    iget-object v6, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_28

    .line 3549
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    iget v6, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/model/FacebookStatus;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-wide v6, v3, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_28

    .line 3551
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    iget v6, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/model/FacebookStatus;

    iget v6, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v6, v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookStatus;ILandroid/graphics/Bitmap;)V

    .line 3556
    :cond_28
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v6, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_29

    .line 3557
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v8

    .line 3558
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/facebook/katana/binding/ProfileImage;->b:Ljava/lang/String;

    iget-object v4, v8, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 3560
    iget-object v10, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    new-instance v3, Lcom/facebook/katana/model/FacebookUser;

    iget-wide v4, v8, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    iget-object v6, v8, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    iget-object v7, v8, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    iget-object v8, v8, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/facebook/katana/binding/ProfileImage;->b:Ljava/lang/String;

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/model/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->a(Lcom/facebook/katana/model/FacebookUser;)V

    .line 3566
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3567
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/facebook/katana/provider/UserValuesManager;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 3570
    :cond_29
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3571
    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->n:Lcom/facebook/katana/binding/ProfileImagesCache;

    move/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V

    goto :goto_29

    .line 3579
    :sswitch_23
    const-string v3, "folder"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 3580
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3581
    invoke-static {}, Lcom/facebook/katana/binding/AppSessionListener;->j()V

    goto :goto_2a

    .line 3587
    :sswitch_24
    const-string v3, "folder"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 3588
    const-string v3, "tid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3589
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 3590
    invoke-virtual/range {v3 .. v9}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;IJ)V

    goto :goto_2b

    .line 3593
    :cond_2a
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 3595
    const-string v3, "read"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3596
    if-eqz v3, :cond_2

    .line 3598
    const/4 v3, 0x1

    new-array v3, v3, [J

    .line 3599
    const/4 v4, 0x0

    aput-wide v8, v3, v4

    .line 3600
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v7, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;I[JZ)Ljava/lang/String;

    goto/16 :goto_0

    .line 3607
    :sswitch_25
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3608
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->f(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2c

    .line 3614
    :sswitch_26
    const-string v3, "tid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 3615
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 3616
    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;J)V

    goto :goto_2d

    .line 3622
    :sswitch_27
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3623
    const-string v4, "tid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    const-string v4, "read"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;[JZ)V

    goto :goto_2e

    .line 3631
    :sswitch_28
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3632
    const-string v5, "tid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->e(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2f

    .line 3639
    :sswitch_29
    check-cast p6, Ljava/lang/Integer;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    .line 3640
    check-cast p7, Ljava/lang/Integer;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    .line 3641
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3642
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v5, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_30

    .line 3650
    :sswitch_2a
    const-string v3, "extra_attempt"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;IZ)Ljava/lang/String;

    goto/16 :goto_0

    .line 3655
    :sswitch_2b
    const-string v3, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 3657
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3659
    const-string v3, "extra_attempt"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;IZ)Ljava/lang/String;

    goto/16 :goto_0

    .line 3662
    :cond_2b
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 3668
    :sswitch_2c
    const/16 v3, 0xcc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 3669
    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;)V

    .line 3671
    const/16 v3, 0xcc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 3677
    :sswitch_2d
    const-string v3, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 3679
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3682
    const-string v3, "extra_attempt"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;IZ)Ljava/lang/String;

    goto/16 :goto_0

    .line 3684
    :cond_2c
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 3691
    :sswitch_2e
    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/binding/AppSession;->y(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3693
    const-string v3, "extra_attempt"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    goto/16 :goto_0

    .line 3699
    :sswitch_2f
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3700
    if-eqz v3, :cond_2

    .line 3702
    iget v4, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    if-ltz v4, :cond_2d

    iget v4, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_2d

    .line 3704
    iget v3, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    .line 3705
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->x(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3706
    :cond_2d
    iget v4, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_2

    goto/16 :goto_0

    .line 3713
    :sswitch_30
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3714
    if-eqz v3, :cond_2

    .line 3716
    iget v3, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    if-eqz v3, :cond_2

    .line 3718
    iget v3, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    if-lez v3, :cond_2

    .line 3719
    iget v3, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    .line 3720
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->x(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3726
    :sswitch_31
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v4, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    const-string v3, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lcom/facebook/katana/service/method/StreamPublish;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;ZLcom/facebook/katana/model/FacebookProfile;)Ljava/lang/String;

    goto/16 :goto_0

    .line 3734
    :sswitch_32
    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->d(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3739
    :sswitch_33
    check-cast p6, Ljava/lang/Long;

    .line 3740
    check-cast p7, Ljava/lang/Boolean;

    .line 3741
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3742
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move/from16 v0, p3

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/facebook/katana/binding/AppSessionListener;->a(IJZ)V

    goto :goto_31

    .line 3749
    :sswitch_34
    check-cast p6, Ljava/lang/Long;

    .line 3750
    check-cast p7, Ljava/util/Map;

    .line 3752
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3753
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/facebook/katana/binding/AppSessionListener;->b(Ljava/util/Map;)V

    goto :goto_32

    .line 3760
    :sswitch_35
    check-cast p6, Ljava/util/Map;

    .line 3761
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3762
    move-object/from16 v0, p6

    invoke-virtual {v3, p0, v0}, Lcom/facebook/katana/binding/AppSessionListener;->a(Lcom/facebook/katana/binding/AppSession;Ljava/util/Map;)V

    goto :goto_33

    .line 3769
    :sswitch_36
    check-cast p6, Ljava/lang/Long;

    .line 3770
    check-cast p7, Ljava/lang/Boolean;

    .line 3771
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3772
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/facebook/katana/binding/AppSessionListener;->b(JZ)V

    goto :goto_34

    .line 3779
    :sswitch_37
    check-cast p6, Ljava/util/Map;

    .line 3780
    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 3781
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/util/Map;)V

    goto :goto_35

    :sswitch_38
    move-object/from16 v9, p6

    .line 3788
    check-cast v9, Lcom/facebook/katana/service/method/ServiceOperation;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v9}, Lcom/facebook/katana/binding/ExtendedReq;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/method/ServiceOperation;)V

    goto/16 :goto_0

    :sswitch_39
    move-object/from16 v6, p6

    .line 3795
    check-cast v6, Lcom/facebook/katana/service/method/ApiMethodCallback;

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v5

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 3796
    invoke-interface/range {v6 .. v13}, Lcom/facebook/katana/service/method/ApiMethodCallback;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 2991
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_b
        0x1e -> :sswitch_2
        0x1f -> :sswitch_4
        0x21 -> :sswitch_5
        0x22 -> :sswitch_3
        0x23 -> :sswitch_6
        0x24 -> :sswitch_7
        0x25 -> :sswitch_8
        0x32 -> :sswitch_e
        0x33 -> :sswitch_10
        0x3c -> :sswitch_11
        0x3d -> :sswitch_12
        0x3e -> :sswitch_13
        0x3f -> :sswitch_14
        0x40 -> :sswitch_15
        0x41 -> :sswitch_16
        0x42 -> :sswitch_17
        0x43 -> :sswitch_18
        0x44 -> :sswitch_19
        0x45 -> :sswitch_1a
        0x46 -> :sswitch_1b
        0x47 -> :sswitch_1c
        0x48 -> :sswitch_1d
        0x49 -> :sswitch_1d
        0x4a -> :sswitch_1e
        0x4b -> :sswitch_1f
        0x4c -> :sswitch_20
        0x4d -> :sswitch_21
        0x50 -> :sswitch_c
        0x51 -> :sswitch_d
        0x52 -> :sswitch_9
        0x53 -> :sswitch_a
        0x5a -> :sswitch_2f
        0x5b -> :sswitch_30
        0x5c -> :sswitch_31
        0x64 -> :sswitch_22
        0x6e -> :sswitch_23
        0x6f -> :sswitch_25
        0x70 -> :sswitch_26
        0x71 -> :sswitch_27
        0x72 -> :sswitch_28
        0x73 -> :sswitch_24
        0x79 -> :sswitch_33
        0x7a -> :sswitch_34
        0x83 -> :sswitch_35
        0x84 -> :sswitch_36
        0x85 -> :sswitch_37
        0xc9 -> :sswitch_2a
        0xca -> :sswitch_2d
        0xcb -> :sswitch_2e
        0xcc -> :sswitch_2c
        0xcd -> :sswitch_2b
        0xd3 -> :sswitch_29
        0x12c -> :sswitch_32
        0x3e8 -> :sswitch_38
        0x3e9 -> :sswitch_39
        0x44c -> :sswitch_f
    .end sparse-switch
.end method

.method private b(Landroid/content/Context;Lcom/facebook/katana/model/FacebookSessionInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3848
    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookSessionInfo;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3854
    invoke-static {p1, v0}, Lcom/facebook/katana/provider/UserValuesManager;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 3856
    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->A(Landroid/content/Context;)V

    .line 3858
    iput-object p2, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    .line 3861
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    .line 3863
    invoke-virtual {v0}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/binding/AppSession;->B:Z

    .line 3868
    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSession;->p()V

    .line 3871
    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3873
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->l(Landroid/content/Context;)V

    .line 3878
    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    .line 3880
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->n(Landroid/content/Context;)V

    .line 3882
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->q(Landroid/content/Context;)V

    .line 3888
    :cond_0
    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    .line 3890
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->m(Landroid/content/Context;)V

    .line 3893
    new-instance v0, Lcom/facebook/katana/binding/AppSession$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/katana/binding/AppSession$4;-><init>(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession$4;->start()V

    .line 3899
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->t(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x50

    .line 1507
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    :goto_0
    return-object v0

    .line 1511
    :cond_0
    if-eqz p3, :cond_2

    .line 1515
    invoke-static {p1}, Lcom/facebook/katana/provider/UserValuesManager;->f(Landroid/content/Context;)J

    move-result-wide v1

    .line 1516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1518
    sub-long v1, v3, v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1522
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;II)V

    goto :goto_0

    .line 1526
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 1529
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1530
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1531
    const-string v2, "type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1536
    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1537
    const-string v2, "un"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    const-string v2, "release_wake_lock"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1540
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/binding/AppSession;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x78

    const/4 v5, 0x0

    .line 4342
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4345
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 4346
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4347
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 4349
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 4350
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "polling_interval"

    const-string v4, "60"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4352
    if-le v2, v1, :cond_2

    .line 4357
    :goto_0
    const v2, 0xea60

    mul-int p2, v1, v2

    .line 4359
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4360
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4361
    const-string v2, "type"

    const/16 v3, 0xc9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4362
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4363
    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4364
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    .line 4367
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4369
    return-void

    .line 4354
    :cond_2
    if-nez v2, :cond_3

    .line 4355
    const/16 v1, 0x1e

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    .line 4601
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030119

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4603
    const v1, 0x7f08015d

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4604
    const v1, 0x7f080313

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4607
    const-string v1, "fb://feed"

    invoke-static {p0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4608
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4609
    const v2, 0x7f080312

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4613
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4614
    const v2, 0x7f080311

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4618
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/facebook/katana/FacebookWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4619
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 4620
    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 4621
    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/binding/AppSession;)Lcom/facebook/katana/model/FacebookSessionInfo;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    return-object v0
.end method

.method private d(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x44c

    .line 1546
    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSession;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    const/4 v0, 0x0

    .line 1566
    :goto_0
    return-object v0

    .line 1550
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 1554
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1555
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1556
    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1561
    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1562
    const-string v2, "un"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    const-string v2, "release_wake_lock"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1565
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2043
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2044
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 2045
    const-string v2, "type"

    const/16 v3, 0x44

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2046
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2047
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2048
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2049
    const-string v2, "pid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    const-string v2, "tags"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2052
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2053
    return-object v1
.end method

.method private d(Landroid/content/Context;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4380
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4383
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 4384
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4385
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4387
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 4388
    const p2, 0x5265c00

    .line 4390
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4391
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4392
    const-string v2, "type"

    const/16 v3, 0xcd

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4393
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4394
    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4395
    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    .line 4396
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, p2

    iget-object v6, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 4398
    return-void
.end method

.method private f(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2241
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2242
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2243
    const-string v2, "type"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2244
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2245
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2246
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2247
    const-string v2, "uri"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2249
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2250
    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2734
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2735
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.facebook.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2738
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2741
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".facebook.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2742
    invoke-static {p0, p1}, Lcom/facebook/katana/util/FacebookPlatform;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2743
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2748
    :cond_1
    if-eqz p0, :cond_2

    .line 2749
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2752
    :cond_2
    return-object p1
.end method

.method public static g(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 2935
    invoke-static {}, Lcom/facebook/katana/util/ErrorReporting;->a()V

    .line 2936
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 2937
    if-eqz v0, :cond_0

    .line 2938
    invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/AppSession;->h(Landroid/content/Context;)V

    .line 2940
    :cond_0
    return-void
.end method

.method private h(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2592
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2593
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2594
    const-string v2, "type"

    const/16 v3, 0x8c

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2595
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2596
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2597
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2598
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2599
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2601
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2602
    return-object v0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 702
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/MediaUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 703
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 705
    return-void
.end method

.method private static j(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 712
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/MediaUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 715
    return-void
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v0, v1, :cond_1

    .line 2931
    :cond_0
    :goto_0
    return-void

    .line 2930
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private l(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 3904
    new-instance v0, Lcom/facebook/katana/binding/AppSession$5;

    invoke-direct {v0, p0}, Lcom/facebook/katana/binding/AppSession$5;-><init>(Lcom/facebook/katana/binding/AppSession;)V

    .line 3924
    const-string v1, "AppSession"

    const-string v2, "Starting fbauth"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    invoke-static {p1, v0}, Lcom/facebook/katana/webview/FacebookAuthentication;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V

    .line 3926
    return-void
.end method

.method private l()Z
    .locals 4

    .prologue
    .line 827
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 828
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 829
    const/16 v2, 0x44c

    if-ne v0, v2, :cond_0

    .line 830
    const/4 v0, 0x1

    .line 833
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized m()V
    .locals 1

    .prologue
    .line 4780
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 4782
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4783
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4780
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4786
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->E:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4789
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private m(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 3938
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->o(Landroid/content/Context;)V

    .line 3941
    invoke-static {p1}, Lcom/facebook/katana/service/method/PostLoginSyncRequest;->a(Landroid/content/Context;)V

    .line 3943
    invoke-static {p1}, Lcom/facebook/katana/features/faceweb/FacewebUriMap;->a(Landroid/content/Context;)Lcom/facebook/katana/util/UriTemplateMap;

    .line 3945
    return-void
.end method

.method private static n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/facebook/katana/binding/AppSession;->j:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/facebook/katana/binding/AppSession;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 3950
    new-instance v0, Lcom/facebook/katana/binding/AppSession$6;

    invoke-direct {v0, p0}, Lcom/facebook/katana/binding/AppSession$6;-><init>(Lcom/facebook/katana/binding/AppSession;)V

    .line 3966
    invoke-static {p1, v0}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;)V

    .line 3968
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 4860
    invoke-static {}, Lcom/facebook/katana/features/Gatekeeper;->a()V

    .line 4861
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4862
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4863
    return-void
.end method

.method private o(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 3973
    new-instance v0, Lcom/facebook/katana/binding/WorkerThread;

    invoke-direct {v0}, Lcom/facebook/katana/binding/WorkerThread;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->q:Lcom/facebook/katana/binding/WorkerThread;

    .line 3975
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->n:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->q:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Lcom/facebook/katana/binding/WorkerThread;)V

    .line 3977
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->o:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->q:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Lcom/facebook/katana/binding/WorkerThread;)V

    .line 3979
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 4878
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    monitor-enter v1

    .line 4879
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4880
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    sget-object v2, Lcom/facebook/katana/binding/AppSession;->g:[Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4881
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private p(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 3984
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->z(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3985
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3987
    const v0, 0x7f0b03d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    :goto_0
    return-void

    .line 3990
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    .line 3997
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->x(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private q(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 4005
    new-instance v0, Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;

    invoke-direct {v0, p0, p1}, Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;-><init>(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/facebook/katana/service/method/BookmarksGet;->a(Lcom/facebook/katana/service/method/BookmarksGet$Callback;)V

    .line 4006
    invoke-static {p1}, Lcom/facebook/katana/service/method/BookmarksGet;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 4008
    return-void
.end method

.method private r(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4013
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;II)V

    .line 4015
    const/16 v0, 0x2710

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;II)V

    .line 4017
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookNotifications;->b(Landroid/content/Context;)V

    .line 4019
    const v0, 0xea60

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;II)V

    .line 4020
    return-void
.end method

.method private s(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 4026
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4029
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookAffiliation;->a(Landroid/content/Context;)V

    .line 4032
    :cond_0
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4036
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->h(Landroid/content/Context;J)Ljava/lang/String;

    .line 4038
    :cond_1
    return-void
.end method

.method private t(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 4053
    invoke-virtual {p0, p1}, Lcom/facebook/katana/binding/AppSession;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 4056
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->p(Landroid/content/Context;)V

    .line 4057
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->r(Landroid/content/Context;)V

    .line 4059
    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->j(Landroid/content/Context;)V

    .line 4061
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;)V

    .line 4062
    invoke-static {p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a()V

    .line 4064
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v0, v1, :cond_0

    .line 4065
    invoke-static {p1}, Lcom/facebook/katana/service/method/PostLoginSyncRequest;->a(Landroid/content/Context;)V

    .line 4066
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->s(Landroid/content/Context;)V

    .line 4068
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4073
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultManager;->a()V

    .line 4074
    return-void
.end method

.method private static u(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 4089
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 4091
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 4092
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 4093
    return-void
.end method

.method private v(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 4107
    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->u(Landroid/content/Context;)V

    .line 4108
    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->B(Landroid/content/Context;)V

    .line 4111
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    .line 4112
    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 4113
    invoke-static {p1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a(Landroid/content/Context;)V

    .line 4115
    const-string v0, "key=\"C2DMKey\""

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4121
    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->A(Landroid/content/Context;)V

    .line 4124
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4128
    return-void
.end method

.method private w(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b0221

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 4139
    const-string v0, "last_username"

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4143
    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    .line 4146
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4149
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->j()V

    .line 4151
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v0, :cond_0

    .line 4152
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->d()V

    .line 4156
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->c()V

    .line 4159
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->n:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->a()V

    .line 4161
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->o:Lcom/facebook/katana/binding/StreamPhotosCache;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->a()V

    .line 4162
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->q:Lcom/facebook/katana/binding/WorkerThread;

    if-eqz v0, :cond_1

    .line 4163
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->q:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/WorkerThread;->c()V

    .line 4164
    iput-object v3, p0, Lcom/facebook/katana/binding/AppSession;->q:Lcom/facebook/katana/binding/WorkerThread;

    .line 4168
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4169
    const v0, 0x7f0b03d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b03d3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4172
    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->i(Landroid/content/Context;)V

    .line 4174
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4177
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 4178
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4179
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4180
    iput-object v3, p0, Lcom/facebook/katana/binding/AppSession;->u:Landroid/app/PendingIntent;

    .line 4184
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    .line 4185
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4186
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4187
    iput-object v3, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    .line 4190
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4

    .line 4191
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4192
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4193
    iput-object v3, p0, Lcom/facebook/katana/binding/AppSession;->w:Landroid/app/PendingIntent;

    .line 4197
    :cond_4
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    .line 4198
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4199
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4200
    iput-object v3, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    .line 4204
    :cond_5
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    .line 4205
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4206
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4207
    iput-object v3, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    .line 4211
    :cond_6
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    const-class v2, Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v1}, Lcom/facebook/katana/service/vault/VaultManager;->c()V

    .line 4214
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    if-eqz v1, :cond_7

    .line 4215
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4216
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 4217
    iput-object v3, p0, Lcom/facebook/katana/binding/AppSession;->z:Landroid/app/PendingIntent;

    .line 4220
    :cond_7
    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSession;->o()V

    .line 4222
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookAffiliation;->b(Landroid/content/Context;)V

    .line 4223
    invoke-static {}, Lcom/facebook/katana/binding/ManagedDataStore;->b()V

    .line 4226
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4227
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4229
    invoke-static {p1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->c(Landroid/content/Context;)V

    .line 4232
    :cond_8
    sget-object v0, Lcom/facebook/katana/binding/AppSession;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 4233
    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSession;->m()V

    .line 4234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 4235
    sget-object v0, Lcom/facebook/katana/service/FacebookService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4238
    :cond_9
    invoke-static {}, Lcom/facebook/katana/util/ErrorReporting;->a()V

    .line 4240
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v0, p1}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->b()V

    .line 4242
    new-instance v0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    invoke-direct {v0}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;-><init>()V

    invoke-virtual {v0, v4}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a(I)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b(I)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v0

    .line 4246
    iget-boolean v1, p0, Lcom/facebook/katana/binding/AppSession;->D:Z

    if-eqz v1, :cond_a

    .line 4247
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->a(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->a(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v1, v2, v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;ILandroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Intent;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)V

    .line 4258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/binding/AppSession;->D:Z

    .line 4261
    :cond_a
    return-void
.end method

.method private x(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 4455
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    iget v1, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookStatus;

    .line 4456
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v2

    .line 4457
    const/4 v1, 0x0

    .line 4458
    iget-object v3, v2, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4459
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->n:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-wide v3, v2, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4461
    :cond_0
    iget v2, p0, Lcom/facebook/katana/binding/AppSession;->t:I

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookStatus;ILandroid/graphics/Bitmap;)V

    .line 4464
    return-void
.end method

.method private static y(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 4472
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 4473
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/facebook/katana/FacebookWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4475
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 4477
    const/4 v0, 0x0

    .line 4479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static z(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4824
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4825
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/UserStatusesProvider;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/binding/AppSession$StatusesQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4827
    if-eqz v8, :cond_2

    .line 4828
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4830
    :cond_0
    new-instance v9, Lcom/facebook/katana/model/FacebookStatus;

    new-instance v0, Lcom/facebook/katana/model/FacebookUser;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/model/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/facebook/katana/model/FacebookStatus;-><init>(Lcom/facebook/katana/model/FacebookUser;Ljava/lang/String;J)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4838
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4841
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4843
    :cond_2
    return-object v7
.end method


# virtual methods
.method public final a()Lcom/facebook/katana/model/FacebookSessionInfo;
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-static {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->a(Lcom/facebook/katana/model/FacebookSessionInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    const-string v0, "SessionInfo"

    const-string v1, "Invalid Session Info encountered"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    return-object v0
.end method

.method public final a(Landroid/content/Context;IJZ)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2292
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2293
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2294
    const-string v2, "type"

    const/16 v3, 0x73

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2295
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2297
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2298
    const-string v2, "folder"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2299
    const-string v2, "tid"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2300
    const-string v2, "read"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2302
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2303
    return-object v0
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZJLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1878
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v3

    .line 1879
    const/4 v2, 0x0

    .line 1880
    if-eqz p4, :cond_0

    .line 1882
    invoke-static {p4}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Ljava/lang/String;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1886
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1, v4, p3, v2, p5}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1890
    const-string v4, "type"

    const/16 v5, 0x41

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1891
    const-string v4, "rid"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1892
    const-string v4, "sid"

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1893
    const-string v4, "upload_id"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1894
    if-eqz p3, :cond_1

    .line 1895
    const-string v4, "aid"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1897
    :cond_1
    if-eqz p4, :cond_2

    .line 1898
    const-string v4, "caption"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    :cond_2
    const-string v4, "profile_id"

    invoke-virtual {v2, v4, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1901
    const-string v4, "checkin_id"

    move-wide v0, p8

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1902
    const-string v4, "uri"

    invoke-virtual {v2, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1903
    const-string v4, "session_key"

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1904
    const-string v4, "session_user_id"

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v5, v5, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1905
    const-string v4, "extra_photo_publish"

    move/from16 v0, p10

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1906
    const-string v4, "extra_place"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1907
    const-string v4, "tags"

    move-object/from16 v0, p13

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1908
    const-string v4, "extra_status_target_id"

    move-wide/from16 v0, p14

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1909
    const-string v4, "extra_status_privacy"

    move-object/from16 v0, p16

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1911
    invoke-direct {p0, p1, v3, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1912
    return-object v3
.end method

.method public final a(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x51

    .line 1576
    if-eqz p3, :cond_0

    .line 1577
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 1580
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1581
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1582
    const-string v2, "type"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1583
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1586
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1587
    const-string v2, "extra_attempt"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1588
    const-string v2, "un"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    const-string v2, "release_wake_lock"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1591
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1592
    return-object v1
.end method

.method public final a(Landroid/content/Context;I[JZ)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2375
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2376
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2377
    const-string v2, "type"

    const/16 v3, 0x71

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2378
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2379
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2380
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2381
    const-string v2, "tid"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2382
    const-string v2, "folder"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2383
    const-string v2, "read"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2385
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2386
    return-object v0
.end method

.method public final a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1452
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1453
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1454
    const-string v2, "type"

    const/16 v3, 0x52

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1455
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1458
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1461
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1462
    return-object v0
.end method

.method public final a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2484
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2485
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2486
    const-string v2, "type"

    const/16 v3, 0x79

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2487
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2488
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2489
    const-string v2, "eid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2490
    const-string v2, "rsvp_status"

    invoke-static {p4}, Lcom/facebook/katana/model/FacebookEventFull;->a(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2491
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2492
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2494
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2495
    return-object v0
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1300
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1301
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1302
    const-string v2, "type"

    const/16 v3, 0x22

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1306
    const-string v2, "post_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1310
    return-object v0
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1383
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1384
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1385
    const-string v2, "type"

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1386
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1389
    const-string v2, "post_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const-string v2, "item_id"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1391
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1393
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1394
    return-object v0
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJZJLjava/util/List;JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZJ",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTagBase;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1943
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v3

    .line 1944
    if-eqz p5, :cond_0

    .line 1947
    invoke-static {p5}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Ljava/lang/String;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1950
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v4, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1951
    const-string v2, "type"

    const/16 v5, 0x41

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1952
    const-string v2, "rid"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    const-string v2, "sid"

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    const-string v2, "vault_image_fbid"

    invoke-virtual {v4, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1955
    if-eqz p4, :cond_1

    .line 1956
    const-string v2, "aid"

    invoke-virtual {v4, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1958
    :cond_1
    if-eqz p5, :cond_2

    .line 1959
    const-string v2, "caption"

    invoke-virtual {v4, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1961
    :cond_2
    const-string v2, "profile_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1962
    const-string v2, "checkin_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1963
    const-string v2, "session_key"

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1964
    const-string v2, "session_user_id"

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v5, v5, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1965
    const-string v2, "extra_photo_publish"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1966
    const-string v2, "extra_place"

    move-wide/from16 v0, p11

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1968
    const/4 v2, 0x0

    .line 1969
    if-eqz p13, :cond_3

    invoke-interface/range {p13 .. p13}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1970
    invoke-static/range {p13 .. p13}, Lcom/facebook/katana/model/FacebookPhotoTagBase;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1972
    :cond_3
    const-string v5, "tags"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1973
    const-string v2, "extra_status_target_id"

    move-wide/from16 v0, p14

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1974
    const-string v2, "extra_status_privacy"

    move-object/from16 v0, p16

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    invoke-direct {p0, p1, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1977
    return-object v3
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/model/FacebookProfile;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1349
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1350
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1351
    const-string v2, "type"

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1352
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1355
    const-string v2, "post_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    const-string v2, "status"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    if-eqz p6, :cond_0

    .line 1360
    const-string v2, "actor"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1363
    :cond_0
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1366
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1367
    return-object v0
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2130
    const/16 v2, 0x4a

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1687
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1688
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1689
    const-string v2, "type"

    const/16 v3, 0x3c

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1690
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1691
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1692
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1693
    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1694
    if-eqz p4, :cond_0

    .line 1696
    const-string v2, "aid"

    invoke-static {p4}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1698
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1699
    return-object v1
.end method

.method public final a(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2549
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2550
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2551
    const-string v2, "type"

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2552
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2553
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2554
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2555
    const-string v2, "confirm"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2556
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2557
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2559
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2560
    return-object v0
.end method

.method public final a(Landroid/content/Context;J[JJJIILcom/facebook/katana/model/FacebookStreamType;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1260
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1261
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1262
    const-string v3, "type"

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1263
    const-string v3, "rid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    const-string v3, "sid"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string v3, "uid"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1266
    const-string v3, "stream_type"

    invoke-virtual/range {p11 .. p11}, Lcom/facebook/katana/model/FacebookStreamType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1268
    if-eqz p4, :cond_2

    .line 1269
    const-string v3, "subject"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1274
    :goto_0
    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1275
    const-string v3, "start"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1277
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p7, v3

    if-lez v3, :cond_1

    .line 1278
    const-string v3, "end"

    invoke-virtual {v2, v3, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1280
    :cond_1
    const-string v3, "limit"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1283
    const-string v3, "app_value"

    move/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1284
    const-string v3, "session_key"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1285
    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1286
    return-object v1

    .line 1271
    :cond_2
    const-string v3, "session_filter_key"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookSessionInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;JLcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/katana/features/places/PlacesNearby$SearchType;",
            "J",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;",
            "Lcom/facebook/katana/service/method/FqlGetPlacesNearby;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    if-nez v0, :cond_0

    .line 2641
    const/4 v0, 0x0

    .line 2649
    :goto_0
    return-object v0

    .line 2644
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Landroid/location/Location;Ljava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;JLcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    .line 2649
    const/16 v1, 0x1f5

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPhoto;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2158
    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPhoto;->h()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Landroid/location/Location;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/model/FacebookPlace;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2670
    new-instance v0, Lcom/facebook/katana/service/method/PlacesCheckin;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/service/method/PlacesCheckin;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/model/FacebookPlace;Landroid/location/Location;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    .line 2682
    const/16 v1, 0x1f7

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4707
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 4708
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4710
    const-string v2, "type"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4711
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4712
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4713
    const-string v2, "extended_type"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4714
    if-eqz p5, :cond_0

    .line 4715
    invoke-virtual {v1, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4719
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4720
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    .line 4721
    iget-object v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionSecret:Ljava/lang/String;

    .line 4722
    if-eqz v2, :cond_1

    .line 4723
    const-string v3, "ApiMethod.secret"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4726
    :cond_1
    sget-object v2, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v2, v3, :cond_2

    invoke-static {v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4727
    :cond_2
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4730
    sget-object v2, Lcom/facebook/katana/service/FacebookService;->a:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4732
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4735
    :cond_3
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2438
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2439
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2440
    const-string v2, "type"

    const/16 v3, 0xd3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2441
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2442
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2443
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2444
    const-string v2, "subject"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2445
    const-string v2, "start"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2446
    const-string v2, "limit"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2448
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2449
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2017
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2018
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 2019
    const-string v2, "type"

    const/16 v3, 0x43

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2020
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2021
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2022
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2023
    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2024
    const-string v2, "pid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2026
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2027
    return-object v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2146
    const/16 v2, 0x4b

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/FacebookPushRegistration$RegistrationListener;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1176
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    const-string v0, "fbandroid"

    const-string v1, "C2DM: the SessionInfo instance isn\'t valid!"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :goto_0
    return-object v2

    .line 1181
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/FacebookPushRegistration;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FacebookPushRegistration;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    if-eqz p4, :cond_1

    .line 1188
    invoke-interface {p4, v0}, Lcom/facebook/katana/service/method/FacebookPushRegistration$RegistrationListener;->a(Lcom/facebook/katana/service/method/FacebookPushRegistration;)V

    .line 1190
    :cond_1
    const/16 v1, 0x2bc

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1118
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1119
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1120
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const-string v2, "un"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    const-string v2, "pwd"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    const-string v2, "cred_type"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->u(Landroid/content/Context;)V

    .line 1129
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1130
    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    .line 1131
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1715
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1716
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1717
    const-string v2, "type"

    const/16 v3, 0x3d

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1718
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1721
    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    if-eqz p3, :cond_0

    .line 1723
    const-string v2, "location"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    :cond_0
    if-eqz p4, :cond_1

    .line 1726
    const-string v2, "description"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1728
    :cond_1
    if-eqz p5, :cond_2

    .line 1729
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1733
    return-object v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1750
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1751
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1752
    const-string v2, "type"

    const/16 v3, 0x3e

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1753
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1754
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1755
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1756
    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1758
    if-eqz p4, :cond_0

    .line 1759
    const-string v2, "location"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1761
    :cond_0
    if-eqz p5, :cond_1

    .line 1762
    const-string v2, "description"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    :cond_1
    if-eqz p6, :cond_2

    .line 1765
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1768
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1769
    return-object v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;J)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1845
    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2039
    invoke-static {p3}, Lcom/facebook/katana/model/FacebookPhotoTag;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2319
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 2320
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2321
    const-string v3, "type"

    const/16 v4, 0x6f

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2322
    const-string v3, "rid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2323
    const-string v3, "sid"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2324
    const-string v3, "session_key"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2325
    const-string v3, "uid"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2326
    const-string v0, "subject"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2327
    const-string v0, "status"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2328
    const-string v0, "profile_uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2329
    const-string v0, "profile_first_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2330
    const-string v0, "profile_last_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2331
    const-string v0, "profile_display_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    const-string v0, "profile_url"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2334
    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2335
    return-object v1
.end method

.method public final a(Landroid/content/Context;[J)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1662
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1663
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1664
    const-string v2, "type"

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1665
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1667
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1668
    const-string v2, "item_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1670
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1671
    return-object v1
.end method

.method public final a(Landroid/content/Context;[JI)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2398
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2399
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2400
    const-string v2, "type"

    const/16 v3, 0x72

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2401
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2402
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2403
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2404
    const-string v2, "tid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2405
    const-string v2, "folder"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2407
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2408
    return-object v0
.end method

.method public final a(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x78

    const/4 v5, 0x0

    .line 4307
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4308
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 4309
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4310
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 4312
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 4313
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "polling_interval"

    const-string v4, "60"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4315
    if-le v2, v1, :cond_2

    .line 4320
    :goto_0
    const v2, 0xea60

    mul-int p2, v1, v2

    .line 4323
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4324
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4325
    const-string v2, "type"

    const/16 v3, 0xcb

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4326
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4327
    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4328
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    .line 4330
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->v:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4332
    return-void

    .line 4317
    :cond_2
    if-nez v2, :cond_3

    .line 4318
    const/16 v1, 0x1e

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4436
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4437
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 4438
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4439
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4441
    :cond_0
    invoke-static {p1, v2, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    .line 4444
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p3

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->y:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4446
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 2760
    .line 2761
    iget-object v0, p2, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->type:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2762
    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->c()Lcom/facebook/katana/model/FacebookVideo;

    move-result-object v2

    .line 2763
    if-eqz v2, :cond_5

    .line 2764
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookVideo;->d()Lcom/facebook/katana/model/FacebookVideo$VideoSource;

    move-result-object v0

    sget-object v3, Lcom/facebook/katana/model/FacebookVideo$VideoSource;->SOURCE_RAW:Lcom/facebook/katana/model/FacebookVideo$VideoSource;

    if-ne v0, v3, :cond_6

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookVideo;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2767
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookVideo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2769
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2770
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2771
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 2775
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookVideo;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2777
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookVideo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2779
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2780
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2781
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 2806
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 2807
    iget-object v0, p2, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->href:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 2809
    :cond_1
    return-void

    .line 2786
    :cond_2
    iget-object v0, p2, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->type:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2788
    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->b()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 2789
    if-eqz v0, :cond_4

    .line 2790
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v3

    .line 2791
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v4

    .line 2792
    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    .line 2793
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v1

    const-string v5, "android.intent.action.VIEW"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2796
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 2800
    :goto_2
    if-nez v0, :cond_0

    .line 2802
    iget-object v0, p2, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->href:Ljava/lang/String;

    const-string v1, "www."

    const-string v2, "m."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move v0, v6

    .line 2803
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookSessionInfo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4868
    iput-object p2, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    .line 4870
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4872
    invoke-static {p1, v0}, Lcom/facebook/katana/provider/UserValuesManager;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 4874
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V
    .locals 5
    .parameter

    .prologue
    .line 4913
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    monitor-enter v1

    .line 4914
    :try_start_0
    const-string v0, "PRELOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "markPreloadStepCompleted step="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4915
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4916
    const-string v0, "PRELOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "markPreloadStepCompleted called with ps="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but steps already empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4918
    monitor-exit v1

    .line 4933
    :goto_0
    return-void

    .line 4920
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4921
    const-string v0, "PRELOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "markPreloadStepCompleted called; but "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in steps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4922
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4933
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4924
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4925
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4926
    const-string v0, "PRELOAD"

    const-string v2, "preload DONE"

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4928
    :cond_2
    const/high16 v0, 0x42c8

    sget-object v2, Lcom/facebook/katana/binding/AppSession;->g:[Lcom/facebook/katana/binding/AppSession$PreloadStep;

    array-length v2, v2

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/facebook/katana/binding/AppSession;->g:[Lcom/facebook/katana/binding/AppSession$PreloadStep;

    array-length v3, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 4930
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 4931
    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/facebook/katana/binding/AppSessionListener;->a(IZ)V

    goto :goto_1

    .line 4933
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/binding/AppSessionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 676
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/ReentrantCallback;->a(Ljava/lang/Object;)V

    .line 677
    return-void
.end method

.method public final a(I)Z
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x192

    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 775
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 776
    const-string v3, "type"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 777
    if-ne v3, v6, :cond_1

    move v0, v1

    .line 788
    :goto_0
    return v0

    .line 780
    :cond_1
    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_0

    .line 781
    const-string v3, "extended_type"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 783
    if-ne v0, v6, :cond_0

    move v0, v1

    .line 784
    goto :goto_0

    .line 788
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IJ)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 903
    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 904
    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    .line 905
    const-string v3, "folder"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p1, :cond_0

    const-string v3, "tid"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, p2

    if-nez v0, :cond_0

    .line 907
    const/4 v0, 0x1

    .line 911
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 5
    .parameter

    .prologue
    .line 921
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 922
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 923
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    .line 924
    const-string v2, "uid"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 926
    const/4 v0, 0x1

    .line 930
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(JLcom/facebook/katana/model/FacebookStreamType;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    .line 727
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 728
    const-string v4, "type"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 729
    const/16 v5, 0x1e

    if-ne v4, v5, :cond_3

    .line 730
    const-string v4, "subject"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 731
    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne p3, v0, :cond_0

    move v0, v1

    .line 756
    :goto_0
    return v0

    .line 737
    :cond_1
    aget-wide v4, v0, v2

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq p3, v0, :cond_2

    sget-object v0, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne p3, v0, :cond_0

    :cond_2
    move v0, v1

    .line 740
    goto :goto_0

    .line 743
    :cond_3
    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_0

    .line 744
    :cond_4
    const-string v4, "extended_type"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 746
    const/16 v5, 0x1f6

    if-ne v4, v5, :cond_0

    .line 747
    const-string v4, "subject"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 749
    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne p3, v0, :cond_0

    move v0, v1

    .line 751
    goto :goto_0

    :cond_5
    move v0, v2

    .line 756
    goto :goto_0
.end method

.method public final a(JLjava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 863
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 864
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 865
    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    .line 866
    const-string v2, "uid"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 867
    const-string v2, "post_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const/4 v0, 0x1

    .line 873
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 765
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Collection;J)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    .line 983
    const/4 v0, 0x0

    .line 984
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 985
    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 986
    const/16 v4, 0x40

    if-ne v3, v4, :cond_1

    const-string v3, "uid"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    .line 992
    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 997
    goto :goto_0

    .line 998
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b(JLcom/facebook/katana/model/FacebookStreamType;)Lcom/facebook/katana/binding/FacebookStreamContainer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1055
    sget-object v0, Lcom/facebook/katana/binding/AppSession$7;->a:[I

    invoke-virtual {p3}, Lcom/facebook/katana/model/FacebookStreamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1067
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1057
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    goto :goto_0

    .line 1062
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    goto :goto_0

    .line 1065
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    goto :goto_0

    .line 1055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x32

    .line 1603
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    if-nez v0, :cond_0

    .line 1605
    const/4 v0, 0x0

    .line 1625
    :goto_0
    return-object v0

    .line 1608
    :cond_0
    if-eqz p3, :cond_1

    .line 1609
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 1612
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1613
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1614
    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1615
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1619
    const-string v2, "release_wake_lock"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1621
    new-instance v2, Lcom/facebook/katana/util/logging/PerformanceMarker;

    const-string v3, "pollNotifications"

    invoke-direct {v2, v3}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->G:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 1622
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->G:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v2, p1}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;)V

    .line 1624
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1473
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1474
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1475
    const-string v2, "type"

    const/16 v3, 0x53

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1476
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1479
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1480
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1482
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1483
    return-object v0
.end method

.method public final b(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1323
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1324
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1325
    const-string v2, "type"

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1326
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1329
    const-string v2, "post_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1333
    return-object v0
.end method

.method public final b(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPhoto;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2186
    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/facebook/katana/model/FacebookPhoto;->i()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2105
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 2106
    const-string v2, "type"

    const/16 v3, 0x47

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2107
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2108
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    const-string v2, "pid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2111
    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2112
    const-string v2, "uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2114
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2115
    return-object v1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1991
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1992
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1993
    const-string v2, "type"

    const/16 v3, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1994
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1995
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1996
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1997
    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1998
    const-string v2, "pid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    if-eqz p4, :cond_0

    .line 2000
    const-string v2, "caption"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2003
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2004
    return-object v1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1102
    if-lez v0, :cond_0

    .line 1104
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->x(Landroid/content/Context;)V

    .line 1106
    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1195
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    const-string v0, "fbandroid"

    const-string v1, "C2DM: the SessionInfo instance isn\'t valid!"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :goto_0
    return-void

    .line 1200
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/facebook/katana/service/method/FacebookPushUnregistration;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const/16 v1, 0x2bd

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;ILandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Lcom/facebook/katana/binding/AppSessionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/ReentrantCallback;->b(Ljava/lang/Object;)V

    .line 687
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-static {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->a(Lcom/facebook/katana/model/FacebookSessionInfo;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1009
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1010
    const/16 v3, 0x46

    if-ne v2, v3, :cond_0

    .line 1011
    const-string v2, "pid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    const/4 v0, 0x1

    .line 1016
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2463
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetEvents;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, v2

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetEvents;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J)V

    .line 2471
    const/16 v1, 0x78

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1407
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1408
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1409
    const-string v2, "type"

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1410
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1412
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1413
    const-string v2, "post_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1415
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1417
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1418
    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/binding/AppSessionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1140
    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    .line 1141
    invoke-static {p1}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;)V

    .line 1143
    new-instance v0, Lcom/facebook/katana/binding/AppSession$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/katana/binding/AppSession$3;-><init>(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1170
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1209
    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1210
    const-string v0, "fbandroid"

    const-string v1, "C2DM: the SessionInfo instance isn\'t valid!"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :goto_0
    return-void

    .line 1214
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/SendPushTraceInfoConfirmation;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/SendPushTraceInfoConfirmation;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 1220
    const/16 v1, 0x2be

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;ILandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Lcom/facebook/katana/binding/AppSessionListener;)Z
    .locals 4
    .parameter

    .prologue
    .line 4886
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    monitor-enter v1

    .line 4887
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4888
    const-string v0, "PRELOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "did not add listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4889
    const/4 v0, 0x0

    monitor-exit v1

    .line 4893
    :goto_0
    return v0

    .line 4891
    :cond_0
    const-string v0, "PRELOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "added listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4892
    invoke-virtual {p0, p1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 4893
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4895
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1494
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2506
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2507
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2508
    const-string v2, "type"

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2509
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2510
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2511
    const-string v2, "eid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2512
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2513
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2515
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2516
    return-object v0
.end method

.method public final d(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1431
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1432
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1433
    const-string v2, "type"

    const/16 v3, 0x25

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1434
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1437
    const-string v2, "post_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1441
    return-object v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1781
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1782
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 1783
    const-string v2, "type"

    const/16 v3, 0x3f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1784
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1785
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    const-string v2, "uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1788
    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1790
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1791
    return-object v1
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 797
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 798
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 799
    const/16 v2, 0x50

    if-ne v0, v2, :cond_0

    .line 800
    const/4 v0, 0x1

    .line 803
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    if-nez v0, :cond_0

    .line 1639
    const/4 v0, 0x0

    .line 1651
    :goto_0
    return-object v0

    .line 1642
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1643
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 1644
    const-string v2, "type"

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1645
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1650
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final e(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2527
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2528
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2529
    const-string v2, "type"

    const/16 v3, 0x83

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2530
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2531
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2532
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2533
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2534
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2536
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2537
    return-object v0
.end method

.method public final e(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2347
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2348
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2349
    const-string v2, "type"

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2350
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2351
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2352
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2353
    const-string v2, "tid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2354
    const-string v2, "status"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2355
    const-string v2, "profile_uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2356
    const-string v2, "profile_first_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2357
    const-string v2, "profile_last_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2358
    const-string v2, "profile_display_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2359
    const-string v2, "profile_url"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2361
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2362
    return-object v0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2084
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2085
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v1

    .line 2086
    const-string v2, "type"

    const/16 v3, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2087
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2088
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2089
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2090
    const-string v2, "pid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2092
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2093
    return-object v1
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 812
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 813
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 814
    const/16 v2, 0x32

    if-ne v0, v2, :cond_0

    .line 815
    const/4 v0, 0x1

    .line 818
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2614
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetFriendCheckins;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/facebook/katana/service/method/FqlGetFriendCheckins;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 2621
    const/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2571
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v0

    .line 2572
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2573
    const-string v2, "type"

    const/16 v3, 0x85

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2574
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2575
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2576
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2577
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2578
    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->r:Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2580
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2581
    return-object v0
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    .line 2200
    const/16 v2, 0x4d

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-wide v7, v3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 4

    .prologue
    .line 843
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 844
    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 845
    const/16 v2, 0x33

    if-ne v0, v2, :cond_0

    .line 846
    const/4 v0, 0x1

    .line 849
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/facebook/katana/binding/AppSession$LoginStatus;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->s:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    return-object v0
.end method

.method public final g(Landroid/content/Context;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4407
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4408
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 4409
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4410
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4413
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    .line 4414
    sget-wide p2, Lcom/facebook/katana/c2dm/PushReceiver;->a:J

    .line 4417
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4419
    const-string v2, "type"

    const/16 v3, 0xcc

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4420
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4421
    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    .line 4422
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->x:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4424
    return-void
.end method

.method public final h()Lcom/facebook/katana/binding/ProfileImagesCache;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->n:Lcom/facebook/katana/binding/ProfileImagesCache;

    return-object v0
.end method

.method public final h(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 2944
    const-string v0, "FORCED_LOGOUT"

    const-string v1, "Forced logout"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Z)V

    .line 2946
    invoke-virtual {p0, p1}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;)V

    .line 2947
    return-void
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4657
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4658
    const-string v1, "type"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4659
    const-string v1, "rid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4661
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4662
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->m:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4664
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4666
    :cond_0
    return-void
.end method

.method public final i()Lcom/facebook/katana/binding/StreamPhotosCache;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->o:Lcom/facebook/katana/binding/StreamPhotosCache;

    return-object v0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 2704
    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->d()V

    .line 2705
    invoke-static {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Lcom/facebook/katana/binding/FacebookStreamContainer;)V

    goto :goto_0

    .line 2708
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 2709
    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->d()V

    .line 2710
    invoke-static {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Lcom/facebook/katana/binding/FacebookStreamContainer;)V

    goto :goto_1

    .line 2712
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2713
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2714
    return-void
.end method
