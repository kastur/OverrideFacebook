.class public Lcom/facebook/katana/ui/CustomMenu;
.super Ljava/lang/Object;
.source "CustomMenu.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/ui/CustomMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/PopupWindow;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private final l:Lcom/facebook/katana/util/logging/InteractionLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->b:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->c:Ljava/util/List;

    .line 45
    iput-object v2, p0, Lcom/facebook/katana/ui/CustomMenu;->d:Landroid/content/Context;

    .line 46
    iput-object v2, p0, Lcom/facebook/katana/ui/CustomMenu;->e:Landroid/view/LayoutInflater;

    .line 47
    iput-object v2, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;

    .line 48
    iput-boolean v1, p0, Lcom/facebook/katana/ui/CustomMenu;->g:Z

    .line 49
    iput-boolean v1, p0, Lcom/facebook/katana/ui/CustomMenu;->h:Z

    .line 50
    iput v1, p0, Lcom/facebook/katana/ui/CustomMenu;->i:I

    .line 131
    invoke-virtual {p0, p2}, Lcom/facebook/katana/ui/CustomMenu;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->a:Ljava/util/ArrayList;

    .line 133
    iput-object p1, p0, Lcom/facebook/katana/ui/CustomMenu;->d:Landroid/content/Context;

    .line 134
    iput-object p3, p0, Lcom/facebook/katana/ui/CustomMenu;->e:Landroid/view/LayoutInflater;

    .line 135
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v0, p1}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->l:Lcom/facebook/katana/util/logging/InteractionLogger;

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ui/CustomMenu;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/ui/CustomMenu;Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/CustomMenu;->a(Lcom/facebook/katana/ui/CustomMenuItem;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 2
    .parameter

    .prologue
    .line 314
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->l:Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 321
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/ui/CustomMenu;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->c:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;

    .line 297
    instance-of v3, v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    if-eqz v3, :cond_0

    .line 301
    check-cast v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-object v1, v0

    .line 302
    goto :goto_0

    .line 304
    :cond_0
    invoke-interface {v0}, Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;->g()V

    goto :goto_0

    .line 307
    :cond_1
    if-eqz v1, :cond_2

    .line 309
    invoke-virtual {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->g()V

    .line 311
    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/view/View;ZZ)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/katana/ui/CustomMenu;->d()V

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/katana/ui/CustomMenu;->g:Z

    .line 149
    iput-boolean p2, p0, Lcom/facebook/katana/ui/CustomMenu;->h:Z

    .line 150
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 151
    if-lez v9, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->d:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_4

    const/4 v1, 0x1

    move v2, v1

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    if-nez v1, :cond_2

    .line 159
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lcom/facebook/katana/ui/CustomMenu;->d:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    .line 160
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    const v4, 0x106000d

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    new-instance v4, Lcom/facebook/katana/ui/CustomMenu$1;

    invoke-direct {v4, p0}, Lcom/facebook/katana/ui/CustomMenu$1;-><init>(Lcom/facebook/katana/ui/CustomMenu;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    iget-object v4, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 174
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->e:Landroid/view/LayoutInflater;

    const v4, 0x7f030061

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->j:Landroid/view/View;

    .line 175
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/facebook/katana/ui/CustomMenu;->j:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;

    .line 177
    if-eqz p3, :cond_3

    .line 178
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;

    const v4, 0x1030056

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 181
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 183
    if-eqz v2, :cond_5

    const/4 v1, 0x6

    move v8, v1

    .line 185
    :goto_2
    if-eqz v2, :cond_6

    const/4 v1, 0x1

    .line 186
    :goto_3
    div-int v3, v9, v8

    rem-int v2, v9, v8

    if-nez v2, :cond_7

    const/4 v2, 0x0

    :goto_4
    add-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/katana/ui/CustomMenu;->i:I

    .line 187
    if-eqz p2, :cond_c

    .line 188
    iget v1, p0, Lcom/facebook/katana/ui/CustomMenu;->i:I

    move v7, v1

    .line 190
    :goto_5
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->j:Landroid/view/View;

    const v2, 0x7f080152

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 191
    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 192
    const/4 v2, 0x0

    move v6, v2

    :goto_6
    if-ge v6, v7, :cond_b

    .line 197
    new-instance v10, Landroid/widget/TableRow;

    iget-object v2, p0, Lcom/facebook/katana/ui/CustomMenu;->d:Landroid/content/Context;

    invoke-direct {v10, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const/4 v2, 0x0

    move v5, v2

    :goto_7
    if-ge v5, v8, :cond_a

    .line 201
    mul-int v2, v6, v8

    add-int/2addr v2, v5

    if-ge v2, v9, :cond_a

    .line 202
    add-int/lit8 v2, v7, -0x1

    if-ne v6, v2, :cond_8

    add-int/lit8 v2, v8, -0x1

    if-ne v5, v2, :cond_8

    mul-int v2, v7, v8

    if-le v9, v2, :cond_8

    if-nez p2, :cond_8

    .line 209
    new-instance v2, Lcom/facebook/katana/ui/CustomMenuItem;

    invoke-direct {v2}, Lcom/facebook/katana/ui/CustomMenuItem;-><init>()V

    .line 210
    iget-object v3, p0, Lcom/facebook/katana/ui/CustomMenu;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0471

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/katana/ui/CustomMenuItem;->a(Ljava/lang/String;)V

    .line 211
    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Lcom/facebook/katana/ui/CustomMenuItem;->b(I)V

    .line 212
    const v3, 0x7f020227

    invoke-virtual {v2, v3}, Lcom/facebook/katana/ui/CustomMenuItem;->a(I)V

    move-object v4, v2

    .line 216
    :goto_8
    iget-object v2, p0, Lcom/facebook/katana/ui/CustomMenu;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030062

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 217
    const v2, 0x7f080154

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 218
    invoke-virtual {v4}, Lcom/facebook/katana/ui/CustomMenuItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const v3, 0x7f080153

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 220
    invoke-virtual {v4}, Lcom/facebook/katana/ui/CustomMenuItem;->b()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    invoke-virtual {v4}, Lcom/facebook/katana/ui/CustomMenuItem;->d()Z

    move-result v12

    if-nez v12, :cond_9

    .line 222
    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 223
    iget-object v3, p0, Lcom/facebook/katana/ui/CustomMenu;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setClickable(Z)V

    .line 243
    :goto_9
    invoke-virtual {v10, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 200
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_7

    .line 156
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_1

    .line 183
    :cond_5
    const/4 v1, 0x3

    move v8, v1

    goto/16 :goto_2

    .line 185
    :cond_6
    const/4 v1, 0x2

    goto/16 :goto_3

    .line 186
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 214
    :cond_8
    iget-object v2, p0, Lcom/facebook/katana/ui/CustomMenu;->a:Ljava/util/ArrayList;

    mul-int v3, v6, v8

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/ui/CustomMenuItem;

    move-object v4, v2

    goto :goto_8

    .line 227
    :cond_9
    new-instance v2, Lcom/facebook/katana/ui/CustomMenu$2;

    invoke-direct {v2, p0, v4}, Lcom/facebook/katana/ui/CustomMenu$2;-><init>(Lcom/facebook/katana/ui/CustomMenu;Lcom/facebook/katana/ui/CustomMenuItem;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 245
    :cond_a
    :try_start_2
    invoke-virtual {v1, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 192
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_6

    .line 248
    :cond_b
    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->l:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v2, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_c
    move v7, v1

    goto/16 :goto_5
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/ui/CustomMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/katana/ui/CustomMenu;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/katana/ui/CustomMenu;->a:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/facebook/katana/ui/CustomMenu;->g:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/facebook/katana/ui/CustomMenu;->h:Z

    return v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 258
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/katana/ui/CustomMenu;->g:Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/ui/CustomMenu;->h:Z

    .line 260
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->f:Landroid/widget/PopupWindow;

    .line 263
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->l:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomMenu;->k:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_1
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
