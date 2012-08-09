.class public Lcom/facebook/katana/activity/FacebookActivityDelegate;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;


# static fields
.field private static F:I

.field private static G:Ljava/lang/String;

.field public static a:Landroid/app/Activity;

.field public static b:Ljava/lang/String;

.field private static f:J

.field private static n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

.field private C:Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;

.field private D:Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;

.field private E:Landroid/app/Dialog;

.field private H:Landroid/view/View;

.field private I:J

.field private J:Lcom/facebook/katana/util/logging/PerformanceMarker;

.field private final K:Landroid/app/Activity;

.field private final L:Landroid/os/Handler;

.field private M:Lcom/facebook/katana/activity/faceweb/FacewebAssassin;

.field private N:Ljava/lang/Long;

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final P:Lcom/facebook/katana/util/logging/InteractionLogger;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:Z

.field private h:Landroid/view/View$OnClickListener;

.field private i:Lcom/facebook/katana/ui/CustomMenu;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/katana/ui/CustomMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/os/Handler;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/ListView;

.field private o:Landroid/view/View;

.field private p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

.field private q:I

.field private r:Lcom/facebook/katana/activity/BookmarksAdapter;

.field private s:Landroid/widget/LinearLayout$LayoutParams;

.field private t:Lcom/facebook/katana/ui/PopupViewDelegate;

.field private u:Landroid/widget/EditText;

.field private v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

.field private w:Z

.field private x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    sput-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a:Landroid/app/Activity;

    .line 161
    sput-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n:Ljava/util/List;

    .line 217
    const/4 v0, 0x0

    sput v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->F:I

    .line 218
    sput-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    .line 168
    iput-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->k:Landroid/os/Handler;

    .line 187
    sget-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->CLOSED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    .line 193
    iput-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    .line 198
    iput-boolean v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->w:Z

    .line 203
    iput v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    .line 204
    iput-boolean v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->z:Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    .line 238
    iput-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->N:Ljava/lang/Long;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->O:Ljava/util/Map;

    .line 245
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->L:Landroid/os/Handler;

    .line 247
    instance-of v0, p1, Lcom/facebook/katana/activity/NotNewNavEnabled;

    if-eqz v0, :cond_0

    .line 248
    iput-boolean v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    .line 250
    :cond_0
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v0, p1}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P:Lcom/facebook/katana/util/logging/InteractionLogger;

    .line 251
    new-instance v0, Lcom/facebook/katana/util/logging/PerformanceMarker;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->J:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 252
    return-void
.end method

.method private A()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 485
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/PopupViewDelegate;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/PopupViewDelegate;->a()V

    .line 503
    :goto_0
    return v0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->OPENED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-ne v1, v2, :cond_2

    .line 488
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 489
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f(Z)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->d()V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->SEARCH_EXPANDED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-ne v1, v2, :cond_3

    .line 495
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->L()V

    goto :goto_0

    .line 497
    :cond_3
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    new-instance v2, Lcom/facebook/katana/util/logging/UserInteractionEvent;

    const-string v3, "CLICK"

    const-string v4, "ANDROID_BTN"

    const-string v5, "BACK"

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    .line 501
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 546
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 548
    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$1;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 558
    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 562
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->D()V

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 565
    if-eqz v0, :cond_3

    .line 566
    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$2;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 584
    if-eqz v0, :cond_4

    .line 585
    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$3;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 604
    if-eqz v0, :cond_5

    .line 605
    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    :cond_5
    return-void
.end method

.method private declared-synchronized C()V
    .locals 4

    .prologue
    .line 668
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 687
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 672
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 674
    new-instance v1, Lcom/facebook/katana/ui/PopupViewDelegate;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/katana/ui/PopupViewDelegate;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    .line 677
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 678
    instance-of v1, v0, Lcom/facebook/katana/ui/CustomRelativeLayout;

    if-eqz v1, :cond_0

    .line 679
    check-cast v0, Lcom/facebook/katana/ui/CustomRelativeLayout;

    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$5;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->setOnLayoutChangedListener(Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->L:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$6;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$6;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    return-void
.end method

.method private E()V
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->L:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$7;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$7;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 759
    return-void
.end method

.method private F()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 763
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 765
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/service/method/NotificationsGet;->a(Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotifications;->d()I

    move-result v5

    .line 766
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802ec

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 768
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x7f0802eb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 769
    if-eqz v1, :cond_0

    .line 770
    if-lez v5, :cond_6

    const v2, 0x7f020183

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 774
    :cond_0
    if-eqz v0, :cond_1

    .line 775
    invoke-direct {p0, v5}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    if-nez v5, :cond_7

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/service/method/NotificationsGet;->a(Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotifications;->b()I

    move-result v2

    .line 779
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 780
    if-eqz v0, :cond_2

    .line 781
    if-lez v2, :cond_8

    const v1, 0x7f02017f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 787
    if-eqz v0, :cond_3

    .line 788
    invoke-direct {p0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    if-nez v2, :cond_9

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/service/method/NotificationsGet;->a(Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotifications;->c()I

    move-result v2

    .line 792
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 794
    if-eqz v0, :cond_4

    .line 795
    if-lez v2, :cond_a

    const v1, 0x7f020187

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 799
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802ee

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 801
    if-eqz v0, :cond_5

    .line 802
    invoke-direct {p0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    if-nez v2, :cond_b

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    :cond_5
    return-void

    .line 770
    :cond_6
    const v2, 0x7f020184

    goto/16 :goto_0

    :cond_7
    move v1, v4

    .line 776
    goto :goto_1

    .line 781
    :cond_8
    const v1, 0x7f020180

    goto :goto_2

    :cond_9
    move v1, v4

    .line 789
    goto :goto_3

    .line 795
    :cond_a
    const v1, 0x7f020188

    goto :goto_4

    :cond_b
    move v3, v4

    .line 803
    goto :goto_5
.end method

.method private G()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1033
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1040
    iput-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    .line 1041
    iput-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    .line 1042
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->b()V

    .line 1044
    iput-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    goto :goto_0
.end method

.method private H()V
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1052
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x7f080162

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1053
    return-void
.end method

.method private I()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1409
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    .line 1410
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    if-nez v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1412
    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    .line 1413
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    .line 1416
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    .line 1417
    new-instance v0, Lcom/facebook/katana/activity/BookmarksAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    sget-object v5, Lcom/facebook/katana/activity/FacebookActivityDelegate;->G:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/activity/BookmarksAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/binding/AppSession;Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    .line 1419
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1420
    sget v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->F:I

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    sget v1, Lcom/facebook/katana/activity/FacebookActivityDelegate;->F:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->o:Landroid/view/View;

    .line 1425
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1426
    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$12;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$12;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1433
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/NavBar;

    .line 1434
    invoke-virtual {v0, p0}, Lcom/facebook/katana/ui/NavBar;->setFacebookActivityDelegate(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    .line 1437
    iput-boolean v7, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->w:Z

    .line 1439
    :cond_1
    return-void
.end method

.method private J()V
    .locals 5

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->w:Z

    if-eqz v0, :cond_0

    .line 1514
    :goto_0
    return-void

    .line 1490
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->w:Z

    .line 1491
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    .line 1492
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$14;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$14;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1499
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1500
    new-instance v2, Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    .line 1503
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$15;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$15;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private K()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1518
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->OPENED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-eq v0, v1, :cond_0

    .line 1554
    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->c()V

    .line 1524
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1526
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Z)V

    .line 1527
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Z)V

    .line 1531
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->J()V

    .line 1534
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a()Lcom/facebook/katana/webview/FacewebWebView;

    .line 1536
    sget-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->SEARCH_EXPANDED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    .line 1537
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1538
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1539
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1543
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->s:Landroid/widget/LinearLayout$LayoutParams;

    .line 1544
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->s:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1545
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1546
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1548
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1549
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1550
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H()V

    .line 1552
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private L()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1558
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->SEARCH_EXPANDED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-eq v0, v1, :cond_0

    .line 1587
    :goto_0
    return-void

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080161

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d(Z)V

    .line 1565
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Z)V

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    sget-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->OPENED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    .line 1574
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 1575
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1576
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1577
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1578
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->s:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1579
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    if-eqz v0, :cond_2

    .line 1580
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c()V

    .line 1582
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1583
    iput-boolean v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->g:Z

    .line 1585
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private M()V
    .locals 3

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1771
    const/4 v0, -0x1

    .line 1772
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/PopupViewDelegate;->g()Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    move-result-object v1

    .line 1773
    sget-object v2, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->FRIEND_REQUESTS:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-ne v1, v2, :cond_2

    .line 1774
    const v0, 0x7f0802e9

    .line 1781
    :cond_0
    :goto_0
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1782
    :goto_1
    if-eqz v0, :cond_1

    .line 1783
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Landroid/view/View;)I

    move-result v0

    .line 1784
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Landroid/content/Context;I)V

    .line 1787
    :cond_1
    return-void

    .line 1775
    :cond_2
    sget-object v2, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->MESSAGES:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-ne v1, v2, :cond_3

    .line 1776
    const v0, 0x7f0802eb

    goto :goto_0

    .line 1777
    :cond_3
    sget-object v2, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->NOTIFICATIONS:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-ne v1, v2, :cond_0

    .line 1778
    const v0, 0x7f0802ed

    goto :goto_0

    .line 1781
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private N()V
    .locals 5

    .prologue
    .line 1809
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x7f0b01a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1845
    :goto_0
    return-void

    .line 1814
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 1816
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1817
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1818
    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 1821
    goto :goto_1

    .line 1823
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1824
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1826
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "fb4a-bug-screenshot.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1827
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1828
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1829
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1830
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1832
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1833
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1834
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lorg/acra/ErrorReporter;->writeReportToStream(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1836
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const-class v4, Lcom/facebook/katana/activity/BugReporter;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1837
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1839
    :try_start_0
    const-string v0, "android.intent.extra.TEXT"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1840
    :catch_0
    move-exception v0

    .line 1841
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private O()Lcom/facebook/katana/webview/FacewebWebView;
    .locals 3

    .prologue
    .line 1868
    const/4 v0, 0x0

    .line 1870
    iget-boolean v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->SEARCH_EXPANDED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1871
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacewebWebView;

    .line 1878
    :cond_0
    :goto_0
    return-object v0

    .line 1873
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/PopupViewDelegate;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1874
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->e()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    goto :goto_0

    .line 1875
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v1, v1, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    if-eqz v1, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->h()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    goto :goto_0
.end method

.method private P()V
    .locals 4

    .prologue
    const v3, 0x7f0a0018

    .line 1896
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0800bd

    const v2, 0x7f0a0001

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/DisplayUtils;->a(Landroid/app/Activity;II)V

    .line 1897
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802ba

    const v2, 0x7f0a0017

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/DisplayUtils;->a(Landroid/app/Activity;II)V

    .line 1898
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f08011a

    invoke-static {v0, v1, v3}, Lcom/facebook/katana/util/DisplayUtils;->a(Landroid/app/Activity;II)V

    .line 1899
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802b6

    invoke-static {v0, v1, v3}, Lcom/facebook/katana/util/DisplayUtils;->a(Landroid/app/Activity;II)V

    .line 1900
    return-void
.end method

.method private Q()V
    .locals 3

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/CustomMenu;->a(Ljava/util/ArrayList;)V

    .line 2178
    :cond_0
    return-void
.end method

.method private R()Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2332
    .line 2333
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    .line 2341
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2349
    :goto_1
    return-object v0

    .line 2335
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;

    if-eqz v0, :cond_3

    .line 2336
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->d_()Landroid/app/Activity;

    move-result-object v0

    .line 2337
    instance-of v2, v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    if-eqz v2, :cond_3

    .line 2338
    check-cast v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    goto :goto_0

    .line 2344
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->h()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    .line 2345
    if-nez v0, :cond_2

    move-object v0, v1

    .line 2346
    goto :goto_1

    .line 2349
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(J)J
    .locals 0
    .parameter

    .prologue
    .line 136
    sput-wide p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f:J

    return-wide p0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->E:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/util/logging/InteractionLogger;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P:Lcom/facebook/katana/util/logging/InteractionLogger;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/animation/TranslateAnimation;)V
    .locals 2
    .parameter

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2360
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2361
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2363
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i(Z)V

    return-void
.end method

.method private a(Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V
    .locals 3
    .parameter

    .prologue
    .line 631
    const/4 v0, -0x1

    .line 633
    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$23;->a:[I

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 645
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/facebook/katana/service/method/NotificationsGet;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->F()V

    .line 650
    return-void

    .line 635
    :pswitch_0
    const v0, 0x7f0802ea

    .line 636
    goto :goto_0

    .line 638
    :pswitch_1
    const v0, 0x7f0802ec

    .line 639
    goto :goto_0

    .line 641
    :pswitch_2
    const v0, 0x7f0802ee

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Landroid/view/View;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/facebook/katana/binding/AppSession;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 837
    if-nez p1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return v0

    .line 841
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 845
    if-eqz v1, :cond_0

    .line 848
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->N:Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 849
    iput-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->N:Ljava/lang/Long;

    .line 851
    :cond_2
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->N:Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Landroid/view/View;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 691
    invoke-direct {p0, p3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 692
    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    const-string v1, "Popovers"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URIMap has no entry for popover URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 695
    const/4 v0, 0x0

    .line 718
    :goto_0
    return v0

    .line 697
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 700
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v0, :cond_2

    .line 703
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-nez v2, :cond_1

    .line 704
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->C()V

    .line 707
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Landroid/view/View;)I

    move-result v2

    .line 708
    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Landroid/app/Activity;Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Ljava/lang/String;I)V

    goto :goto_0

    .line 711
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v1, p3}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 713
    const-string v2, "faceweb_modal"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 715
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 716
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x7f04000f

    const v3, 0x7f040010

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;)Z
    .locals 5
    .parameter

    .prologue
    .line 2079
    invoke-interface {p1}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;->a()Ljava/util/List;

    move-result-object v1

    .line 2082
    if-nez v1, :cond_0

    .line 2083
    const/4 v0, 0x0

    .line 2108
    :goto_0
    return v0

    .line 2086
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2088
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2089
    const/16 v4, 0x3e9

    if-lt v0, v4, :cond_2

    const/16 v4, 0x3ee

    if-le v0, v4, :cond_1

    .line 2091
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2095
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2096
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(I)V

    goto :goto_2

    .line 2099
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    .line 2100
    iget v1, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->c:I

    if-lez v1, :cond_6

    iget v1, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->c:I

    .line 2102
    :goto_4
    iget v3, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->a:I

    iget v4, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->b:I

    invoke-virtual {p0, v3, v4, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(III)V

    .line 2103
    iget v1, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->a:I

    iget-boolean v3, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->d:Z

    invoke-virtual {p0, v1, v3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(IZ)V

    .line 2104
    iget-object v1, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2105
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->O:Ljava/util/Map;

    iget v3, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;->e:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2100
    :cond_6
    const v1, 0x7f02022b

    goto :goto_4

    .line 2108
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private b(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 660
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 661
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 662
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 663
    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/ui/PopupViewDelegate;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 810
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/features/faceweb/FacewebUriMap;->a(Landroid/content/Context;)Lcom/facebook/katana/util/UriTemplateMap;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_1

    .line 813
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap$UriMatch;

    move-result-object v2

    .line 814
    if-nez v2, :cond_0

    move-object v0, v1

    .line 826
    :goto_0
    return-object v0

    .line 817
    :cond_0
    iget-object v0, v2, Lcom/facebook/katana/util/UriTemplateMap$UriMatch;->a:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/katana/features/faceweb/FacewebUriMap$FacewebUriHandler;

    .line 819
    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    iget-object v2, v2, Lcom/facebook/katana/util/UriTemplateMap$UriMatch;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Lcom/facebook/katana/features/faceweb/FacewebUriMap$FacewebUriHandler;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "mobile_page"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/facebook/katana/util/UriTemplateMap$InvalidUriException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while getting mobile page url from URL="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    .line 826
    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->M()V

    return-void
.end method

.method private e(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 723
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 724
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0b0448

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->F()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    return-object v0
.end method

.method private f(I)V
    .locals 2
    .parameter

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->O:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->O:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2304
    if-eqz v0, :cond_0

    .line 2305
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2308
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->L()V

    return-void
.end method

.method private static h(Landroid/app/Activity;)I
    .locals 2
    .parameter

    .prologue
    .line 1851
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 1852
    sget v1, Lcom/facebook/katana/activity/BookmarksAdapter;->a:F

    invoke-static {p0, v1}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 1854
    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->B:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    return-object v0
.end method

.method private h(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1911
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->OPENED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-eq v0, v1, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h(Landroid/app/Activity;)I

    move-result v6

    .line 1916
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1917
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 1919
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1922
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1926
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1928
    if-eqz v0, :cond_0

    .line 1931
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->x:Ljava/util/Set;

    move v1, v2

    .line 1932
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1933
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1934
    iget-object v5, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v5}, Lcom/facebook/katana/ui/PopupViewDelegate;->f()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1936
    :cond_3
    iget-object v5, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->x:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1932
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1942
    :cond_5
    iget v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    if-nez v1, :cond_a

    move v1, v3

    .line 1947
    :goto_2
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    int-to-float v4, v4

    int-to-float v5, v6

    invoke-direct {v7, v4, v5, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1950
    if-eqz p1, :cond_6

    .line 1954
    if-eqz v1, :cond_b

    sget v4, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v4, v4

    .line 1955
    :goto_3
    invoke-virtual {v7, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1956
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1958
    :cond_6
    iget v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v4}, Lcom/facebook/katana/activity/BookmarksAdapter;->e()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->z:Z

    if-eqz v4, :cond_7

    .line 1960
    iput-boolean v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->z:Z

    .line 1961
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    int-to-float v4, v4

    int-to-float v5, v6

    invoke-direct {v2, v4, v5, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1963
    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1964
    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->o:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1967
    :cond_7
    iput v6, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    .line 1968
    invoke-virtual {v7, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1970
    new-instance v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;

    invoke-direct {v2, p0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;Z)V

    invoke-virtual {v7, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2018
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_8

    .line 2019
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2024
    :cond_8
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v2, 0x7f08016a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$18;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$18;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2031
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->x:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2032
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_9

    .line 2033
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2035
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 2036
    invoke-virtual {v1, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    :cond_a
    move v1, v2

    .line 1942
    goto/16 :goto_2

    .line 1954
    :cond_b
    const-wide/16 v4, 0x1

    goto/16 :goto_3

    .line 2039
    :cond_c
    invoke-direct {p0, v3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i(Z)V

    .line 2043
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    if-nez v1, :cond_d

    .line 2044
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    .line 2045
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2047
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    new-instance v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$19;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$19;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2054
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2058
    :cond_d
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2059
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2060
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->J()V

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->C:Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;

    return-object v0
.end method

.method private i(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2318
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->R()Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    move-result-object v0

    .line 2319
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2320
    if-eqz p1, :cond_1

    .line 2321
    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V

    .line 2327
    :cond_0
    :goto_0
    return-void

    .line 2324
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->d()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->D:Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;

    return-object v0
.end method

.method static synthetic k(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->G()V

    return-void
.end method

.method static synthetic l(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    return-object v0
.end method

.method static synthetic o(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K()V

    return-void
.end method

.method static synthetic p(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->D()V

    return-void
.end method

.method static synthetic r(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Z
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c:Z

    return v0
.end method

.method static synthetic t()J
    .locals 2

    .prologue
    .line 136
    sget-wide v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f:J

    return-wide v0
.end method

.method static synthetic t(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->E()V

    return-void
.end method

.method static synthetic u(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->L:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u()Ljava/util/List;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->E:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic w(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic x(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I:J

    return-wide v0
.end method

.method public final a(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 4
    .parameter
    .parameter
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "We\'re using this as a tristate."
    .end annotation

    .prologue
    const/16 v1, 0x52

    const/4 v3, 0x1

    .line 431
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->c()V

    .line 434
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    .line 436
    :cond_0
    invoke-static {p2}, Lcom/facebook/katana/util/EclairKeyHandler;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_2
    if-ne p1, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 446
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    if-nez v0, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f()V

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->c()V

    .line 454
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/ui/CustomMenu;->a(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 456
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(ILjava/lang/String;)V

    .line 299
    return-void
.end method

.method public final a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(ILjava/lang/String;I)V

    .line 2199
    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f080030

    const v5, 0x7f08002f

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 365
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 367
    if-gez p1, :cond_0

    .line 368
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :goto_0
    if-nez p2, :cond_1

    .line 378
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :goto_1
    return-void

    .line 372
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 373
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(ILjava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    :goto_0
    return-void

    .line 2207
    :cond_0
    new-instance v0, Lcom/facebook/katana/ui/CustomMenuItem;

    invoke-direct {v0}, Lcom/facebook/katana/ui/CustomMenuItem;-><init>()V

    .line 2208
    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/CustomMenuItem;->b(I)V

    .line 2209
    invoke-virtual {v0, p2}, Lcom/facebook/katana/ui/CustomMenuItem;->a(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v0, p3}, Lcom/facebook/katana/ui/CustomMenuItem;->a(I)V

    .line 2211
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/CustomMenuItem;

    .line 2233
    if-eqz v0, :cond_0

    .line 2234
    invoke-virtual {v0, p2}, Lcom/facebook/katana/ui/CustomMenuItem;->a(Z)V

    .line 2236
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f080030

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 311
    if-nez p1, :cond_0

    .line 312
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const-class v2, Lcom/facebook/katana/ComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1109
    if-eqz p1, :cond_0

    .line 1110
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1112
    :cond_0
    if-eqz p2, :cond_1

    .line 1113
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1116
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p4, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v1, p4, v1

    if-eqz v1, :cond_2

    .line 1118
    const-string v1, "extra_fixed_audience_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1121
    :cond_2
    if-eqz p3, :cond_3

    .line 1122
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1137
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const-class v2, Lcom/facebook/katana/FeedComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1139
    if-eqz p1, :cond_0

    .line 1140
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1143
    :cond_0
    if-eqz p2, :cond_1

    .line 1144
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1148
    :goto_0
    return-void

    .line 1146
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h:Landroid/view/View$OnClickListener;

    .line 325
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either override FBActivity.titleBarPrimaryActionClickHandler or call FBAD.setPrimaryClickHandler for the click handling."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/CustomMenu;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 2187
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2241
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2294
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f(I)V

    .line 2298
    :goto_1
    return-void

    .line 2243
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const-class v2, Lcom/facebook/katana/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2244
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 2249
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const-class v3, Lcom/facebook/katana/HtmlAboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2255
    :pswitch_2
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->N()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2256
    :catch_0
    move-exception v0

    .line 2257
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error reporting bug: "

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2263
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2264
    const-string v1, "How do you want to fail?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Hard crash"

    new-instance v3, Lcom/facebook/katana/activity/FacebookActivityDelegate$21;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$21;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Soft error"

    new-instance v3, Lcom/facebook/katana/activity/FacebookActivityDelegate$20;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$20;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 2284
    :pswitch_4
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n()V

    goto :goto_1

    .line 2289
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->c()V

    .line 2290
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/facebook/katana/ui/CustomMenu;->a(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 2241
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1169
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1170
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v0, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1171
    if-eqz p1, :cond_0

    .line 1172
    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1175
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1177
    return-void
.end method

.method public final a(ZF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1329
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->CLOSED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1334
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1337
    :cond_2
    sget-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->CLOSED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    .line 1339
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    .line 1341
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p2, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1342
    if-eqz p1, :cond_3

    .line 1343
    sget v1, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1345
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1347
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1348
    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$11;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$11;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1359
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/animation/TranslateAnimation;)V

    .line 1361
    invoke-direct {p0, v3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i(Z)V

    .line 1363
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1364
    sget-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1365
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ILandroid/app/Dialog;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1012
    packed-switch p1, :pswitch_data_0

    .line 1026
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1014
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->O()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v1

    .line 1016
    sget-object v2, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1017
    const-string v2, "MobileCanvas"

    const-string v3, "Trying to open a Mobile Canvas Dialog with a null URL"

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1021
    :cond_0
    check-cast p2, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;

    sget-object v2, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b:Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView;)V

    goto :goto_0

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x28d04514
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 995
    packed-switch p1, :pswitch_data_0

    .line 1000
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 997
    :pswitch_0
    new-instance v0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x7f0d0018

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 995
    :pswitch_data_0
    .packed-switch 0x28d04514
        :pswitch_0
    .end packed-switch
.end method

.method public final b(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 1
    .parameter
    .parameter
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "We\'re using this as a tristate."
    .end annotation

    .prologue
    .line 468
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 469
    invoke-static {p2}, Lcom/facebook/katana/util/EclairKeyHandler;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A()Z

    move-result v0

    .line 471
    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 474
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    .line 857
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/BackgroundDetectionService;->b(Landroid/content/Context;)V

    .line 858
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->J:Lcom/facebook/katana/util/logging/PerformanceMarker;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/util/logging/MarkerType;->ACTIVITY_RESUMED:Lcom/facebook/katana/util/logging/MarkerType;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MarkerType;)V

    .line 861
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->M:Lcom/facebook/katana/activity/faceweb/FacewebAssassin;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->M:Lcom/facebook/katana/activity/faceweb/FacewebAssassin;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->b()V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->M:Lcom/facebook/katana/activity/faceweb/FacewebAssassin;

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 869
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/binding/AppSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    const-string v0, "Finishing stale activity."

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 914
    :cond_1
    :goto_0
    return-void

    .line 876
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P()V

    .line 878
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v1, :cond_3

    .line 879
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Landroid/app/Activity;)V

    .line 882
    :cond_3
    invoke-static {}, Lcom/facebook/katana/service/method/PerfLogging;->g()V

    .line 884
    iget-boolean v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 885
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->C:Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;

    if-eqz v1, :cond_4

    .line 886
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->C:Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 888
    :cond_4
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->B:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    if-eqz v1, :cond_5

    .line 889
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->B:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 891
    :cond_5
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->D:Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;

    if-eqz v1, :cond_6

    .line 892
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->D:Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 895
    :cond_6
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->D()V

    .line 896
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->E()V

    .line 899
    :cond_7
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->ONRESUME:Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V

    .line 900
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c:Z

    .line 904
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    sput-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a:Landroid/app/Activity;

    .line 905
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/app/Activity;)V

    .line 908
    instance-of v0, p1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/service/method/NotificationsGet;->a(Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotifications;->d()I

    move-result v0

    .line 910
    if-lez v0, :cond_1

    .line 911
    sget-object v0, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->INBOX:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public final b(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1186
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1187
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v2, v0, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1191
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1192
    new-instance v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$9;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$9;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1199
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1201
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1203
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 1205
    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_3

    .line 1208
    :cond_1
    iput-boolean v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->z:Z

    .line 1212
    :goto_1
    return-void

    .line 1203
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_0

    .line 1210
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->z:Z

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->N:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    .line 335
    sget-object v0, Lcom/facebook/katana/util/Utils;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I:J

    .line 336
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->J:Lcom/facebook/katana/util/logging/PerformanceMarker;

    sget-object v1, Lcom/facebook/katana/util/logging/MarkerType;->ACTIVITY_CREATED:Lcom/facebook/katana/util/logging/MarkerType;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MarkerType;)V

    .line 338
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->ONCREATE:Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V

    .line 341
    iget-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->B:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    .line 344
    new-instance v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->C:Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;

    .line 345
    new-instance v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->D:Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;

    .line 346
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I()V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m()V

    .line 350
    return-void
.end method

.method public final c(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f080161

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1221
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1222
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1223
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v0, v0

    invoke-direct {v1, v0, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1224
    if-eqz p1, :cond_0

    .line 1225
    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1228
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c:Z

    return v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0802ec

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 527
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x7f0802eb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 528
    if-eqz v0, :cond_2

    .line 529
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    :cond_2
    if-eqz v1, :cond_0

    .line 538
    const v0, 0x7f020183

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public final d(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2394
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2396
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2397
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/animation/TranslateAnimation;)V

    .line 2398
    iput p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    .line 2399
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 919
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 925
    iget-boolean v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    if-eqz v1, :cond_1

    .line 926
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 927
    new-instance v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/binding/AppSession;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 955
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->G:Ljava/lang/String;

    .line 957
    sget-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->F:I

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v0, :cond_2

    .line 965
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->c()V

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 969
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->c()V

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->L:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 975
    sput-object v6, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a:Landroid/app/Activity;

    .line 976
    iput-boolean v5, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c:Z

    .line 977
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/BackgroundDetectionService;->a(Landroid/content/Context;)V

    .line 978
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/app/Activity;)V

    .line 979
    return-void
.end method

.method public final d(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1238
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1239
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v0, v0

    invoke-direct {v1, v2, v0, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1240
    if-eqz p1, :cond_0

    .line 1241
    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1243
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1244
    new-instance v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$10;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$10;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1250
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1251
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 984
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->d()V

    .line 986
    iput-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    .line 989
    :cond_0
    iput-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    .line 990
    return-void
.end method

.method public final e(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1260
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->OPENED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-ne v0, v1, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 1267
    sget-object v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->OPENED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    .line 1268
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1269
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I()V

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->a()V

    .line 1276
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q:I

    .line 1278
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1288
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1289
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h(Z)V

    .line 1290
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1291
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d(Z)V

    .line 1292
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Z)V

    .line 1296
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1281
    :catch_0
    move-exception v0

    const-string v0, "FacebookActivityDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error finding activityInfo for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    if-nez v0, :cond_0

    .line 2067
    new-instance v0, Lcom/facebook/katana/ui/CustomMenu;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/katana/ui/CustomMenu;-><init>(Landroid/content/Context;Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;

    if-eqz v0, :cond_1

    .line 2070
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;

    invoke-interface {v0}, Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;->f()V

    .line 2072
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;

    if-eqz v0, :cond_2

    .line 2073
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/ui/CustomMenu;->a(Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;)V

    .line 2075
    :cond_2
    return-void
.end method

.method public final f(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q()I

    move-result v0

    int-to-float v0, v0

    .line 1318
    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(ZF)V

    .line 1319
    return-void
.end method

.method public final g()V
    .locals 9

    .prologue
    const/16 v8, 0x3eb

    const/16 v7, 0x3e9

    const/16 v6, 0x3ea

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2114
    .line 2115
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/SettingsActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2119
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v1

    .line 2124
    :goto_0
    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    .line 2125
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v3, v4, :cond_7

    move v3, v1

    .line 2127
    :goto_1
    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v4, v4, Lcom/facebook/katana/SettingsActivity;

    if-nez v4, :cond_0

    .line 2129
    const v4, 0x7f0b020c

    const v5, 0x7f02022b

    invoke-virtual {p0, v7, v4, v5}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(III)V

    .line 2133
    :cond_0
    iget-boolean v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    if-eqz v4, :cond_1

    .line 2134
    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2137
    const v3, 0x7f0b0209

    const v4, 0x7f020226

    invoke-virtual {p0, v8, v3, v4}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(III)V

    .line 2142
    :cond_1
    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2143
    const v3, 0x7f0b0210

    const v4, 0x7f020225

    invoke-virtual {p0, v6, v3, v4}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(III)V

    .line 2146
    :cond_2
    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v3, v3, Lcom/facebook/katana/HtmlAboutActivity;

    if-nez v3, :cond_8

    :goto_2
    invoke-virtual {p0, v6, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(IZ)V

    .line 2148
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    const/16 v2, 0x3ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 2151
    const/16 v1, 0x3ec

    const v2, 0x7f0b01ad

    const v3, 0x1080038

    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(III)V

    .line 2154
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j:Ljava/util/Map;

    const/16 v2, 0x3ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v1, v1, Lcom/facebook/katana/activity/BugReporter;

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 2159
    const/16 v0, 0x3ed

    const v1, 0x7f0b01ae

    const v2, 0x7f020223

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(III)V

    .line 2165
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2166
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;

    if-eqz v0, :cond_6

    .line 2167
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;)Z

    .line 2170
    :cond_6
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->Q()V

    .line 2171
    return-void

    :cond_7
    move v3, v2

    .line 2125
    goto/16 :goto_1

    :cond_8
    move v1, v2

    .line 2146
    goto :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method public final g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1376
    iput-boolean p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    .line 1377
    return-void
.end method

.method protected final h()V
    .locals 5

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->LOCAL_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v3}, Lcom/facebook/orca/activity/FbActivityUtils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->DATA_REQUESTED:Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V

    .line 1060
    return-void
.end method

.method protected final i()V
    .locals 5

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->NETWORK_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v3}, Lcom/facebook/orca/activity/FbActivityUtils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->DATA_RECEIVED:Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->I:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V

    .line 1067
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1075
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    const-string v2, "within_tab"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    const-string v2, "extra_parent_tag"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const/16 v0, 0x7c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_1

    .line 1085
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d:Ljava/lang/String;

    .line 1092
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1156
    iget-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_navbar"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->e(Z)V

    .line 1159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f(Z)V

    .line 1161
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->a()V

    .line 1305
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->OPENED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-ne v0, v1, :cond_1

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1446
    if-eqz v0, :cond_2

    .line 1447
    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$13;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$13;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    .line 1456
    instance-of v2, v0, Lcom/facebook/katana/ui/FbandroidTitleBar;

    if-eqz v2, :cond_4

    .line 1457
    check-cast v0, Lcom/facebook/katana/ui/FbandroidTitleBar;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/FbandroidTitleBar;->setDefaultPrimaryOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1465
    if-eqz v0, :cond_3

    .line 1466
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->A:Z

    if-nez v0, :cond_5

    .line 1470
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/katana/activity/NotNewNavEnabled;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1472
    if-eqz v0, :cond_0

    .line 1473
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    check-cast v1, Lcom/facebook/katana/activity/NotNewNavEnabled;

    invoke-interface {v1}, Lcom/facebook/katana/activity/NotNewNavEnabled;->k()Ljava/lang/String;

    move-result-object v1

    .line 1474
    if-eqz v1, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    check-cast v1, Lcom/facebook/katana/activity/NotNewNavEnabled;

    invoke-interface {v1}, Lcom/facebook/katana/activity/NotNewNavEnabled;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1460
    :cond_4
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1480
    :cond_5
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->B()V

    goto :goto_0
.end method

.method public final n()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1733
    new-instance v5, Lcom/facebook/katana/activity/FacebookActivityDelegate$16;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$16;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    .line 1754
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v2, 0x7f0b0209

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x108009b

    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v4, 0x7f0b0353

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v6, 0x7f0b03d7

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v8, 0x7f0b0264

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    .line 1760
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1761
    return-void
.end method

.method public final o()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1792
    invoke-direct {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->P()V

    .line 1794
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h(Z)V

    .line 1796
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v2}, Lcom/facebook/katana/ui/CustomMenu;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1797
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v2}, Lcom/facebook/katana/ui/CustomMenu;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1798
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v2}, Lcom/facebook/katana/ui/CustomMenu;->c()V

    .line 1799
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i:Lcom/facebook/katana/ui/CustomMenu;

    iget-object v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/katana/ui/CustomMenu;->a(Landroid/view/View;ZZ)V

    .line 1801
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1797
    goto :goto_0
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->M:Lcom/facebook/katana/activity/faceweb/FacewebAssassin;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/Object;)V

    .line 1889
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebAssassin$NavBarAssassin;

    invoke-direct {v1}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin$NavBarAssassin;-><init>()V

    const v2, 0x88b8

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->a(Landroid/os/Handler;Lcom/facebook/katana/activity/faceweb/FacewebAssassin$AssassinFilter;I)Lcom/facebook/katana/activity/faceweb/FacewebAssassin;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->M:Lcom/facebook/katana/activity/faceweb/FacewebAssassin;

    .line 1892
    return-void
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->K:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 2383
    iget v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    return v0
.end method

.method public final s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2406
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q()I

    move-result v0

    .line 2407
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2409
    iget v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    if-eq v2, v0, :cond_0

    .line 2410
    sget v2, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    iget v3, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/2addr v2, v3

    div-int/2addr v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2413
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2414
    new-instance v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$22;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$22;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2421
    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/animation/TranslateAnimation;)V

    .line 2422
    iput v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate;->y:I

    .line 2423
    return-void
.end method
