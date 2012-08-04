.class public Lcom/facebook/orca/common/ui/titlebar/TitleBar;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "TitleBar.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# instance fields
.field private a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/OrcaConfig;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private d:Lcom/facebook/orca/app/OrcaAppType;

.field private e:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:Lcom/facebook/orca/common/visuals/VisualAppTheme;

.field private w:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 416
    sget v0, Lcom/facebook/orca/R$id;->titlebar_stub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/16 v4, 0x88

    const/4 v3, 0x1

    .line 103
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 104
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Ljavax/inject/Provider;

    .line 105
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b:Landroid/view/LayoutInflater;

    .line 106
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 107
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d:Lcom/facebook/orca/app/OrcaAppType;

    .line 108
    const-class v0, Lcom/facebook/orca/common/visuals/VisualAppTheme;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/visuals/VisualAppTheme;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Lcom/facebook/orca/common/visuals/VisualAppTheme;

    .line 109
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->e:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 111
    sget-object v0, Lcom/facebook/orca/R$styleable;->TitleBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_titlebar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    sget v0, Lcom/facebook/orca/R$id;->titlebar_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Landroid/view/View;

    .line 118
    sget v0, Lcom/facebook/orca/R$id;->titlebar_progress_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/view/View;

    .line 119
    sget v0, Lcom/facebook/orca/R$id;->titlebar_progress:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/widget/ProgressBar;

    .line 120
    sget v0, Lcom/facebook/orca/R$id;->titlebar_main_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/view/ViewGroup;

    .line 121
    sget v0, Lcom/facebook/orca/R$id;->titlebar_text_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->j:Landroid/view/ViewGroup;

    .line 122
    sget v0, Lcom/facebook/orca/R$id;->titlebar_menu_arrow:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/ImageView;

    .line 123
    sget v0, Lcom/facebook/orca/R$id;->titlebar_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget v0, Lcom/facebook/orca/R$id;->titlebar_button_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    .line 127
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d()V

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    const-string v1, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "com.facebook.orca.ACTION_ORCA_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/view/ViewGroup;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->f()Lcom/facebook/orca/app/OrcaAppType$Audience;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Audience;->DEVELOPMENT:Lcom/facebook/orca/app/OrcaAppType$Audience;

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p0, v6}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setWillNotDraw(Z)V

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c()V

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Landroid/graphics/Paint;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V

    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 376
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 378
    :goto_1
    invoke-virtual {p1, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setSelected(Z)V

    .line 379
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a(Z)V

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;)V

    goto :goto_0

    .line 377
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 357
    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    const-string v2, "button"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    .line 362
    instance-of v2, v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    if-eqz v2, :cond_1

    .line 363
    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsActivity;->f_()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->e:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 306
    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;-><init>(Landroid/content/Context;)V

    .line 307
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 309
    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    new-instance v2, Lcom/facebook/orca/common/ui/titlebar/TitleBar$3;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$3;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;I)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    if-nez v0, :cond_0

    .line 318
    sget v2, Lcom/facebook/orca/R$id;->title_button_1:I

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setId(I)V

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    move v1, v3

    .line 323
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 325
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 326
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setVisibility(I)V

    .line 328
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setSelected(Z)V

    .line 329
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    if-eqz v1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 323
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_1

    :cond_2
    move v5, v3

    .line 327
    goto :goto_2

    :cond_3
    move v1, v3

    .line 329
    goto :goto_3

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 335
    invoke-virtual {v0, v7}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setVisibility(I)V

    .line 336
    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 333
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 339
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    if-eqz v0, :cond_7

    .line 340
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 341
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 348
    :goto_5
    return-void

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5

    .line 346
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    .line 408
    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_title_bar_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Landroid/view/View;

    const/16 v1, 0xff

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 279
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    .line 281
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    :cond_0
    move v1, v2

    .line 286
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 289
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 290
    const/4 v0, 0x1

    .line 295
    :goto_2
    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Lcom/facebook/orca/common/visuals/VisualAppTheme;

    sget-object v1, Lcom/facebook/orca/common/visuals/VisualAppTheme;->FB4A:Lcom/facebook/orca/common/visuals/VisualAppTheme;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 427
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    return-void

    .line 427
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->f()Lcom/facebook/orca/app/OrcaAppType$Audience;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Audience;->DEVELOPMENT:Lcom/facebook/orca/app/OrcaAppType$Audience;

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Landroid/graphics/Paint;

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onAttachedToWindow()V

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a()V

    .line 174
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onDetachedFromWindow()V

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b()V

    .line 180
    return-void
.end method

.method public setButtonSelected(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 264
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e()Z

    move-result v2

    if-eq v2, p2, :cond_2

    .line 266
    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a(Z)V

    .line 267
    const/4 v0, 0x1

    .line 272
    :goto_0
    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c()V

    .line 275
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setButtonSpecs(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Ljava/util/List;

    .line 258
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c()V

    .line 259
    return-void
.end method

.method public setCustomTitleView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 242
    :cond_0
    if-eqz p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHasProgressBar(Z)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 225
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c()V

    .line 229
    :cond_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    .line 394
    return-void
.end method

.method public setQuickActionMenuListener(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    .line 423
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method
