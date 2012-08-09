.class public Lcom/facebook/orca/maps/MapClickableImageView;
.super Lcom/facebook/orca/activity/CustomView;
.source "MapClickableImageView.java"


# instance fields
.field private a:Lcom/facebook/orca/maps/MapsUtil;

.field private b:Lcom/facebook/orca/threads/Message;

.field private c:Lcom/facebook/orca/images/UrlImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->b()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->b()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->b()V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/maps/MapClickableImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->d()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/maps/MapsUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/maps/MapsUtil;

    iput-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->a:Lcom/facebook/orca/maps/MapsUtil;

    .line 46
    sget v0, Lcom/facebook/orca/R$layout;->orca_map_clickable_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/maps/MapClickableImageView;->a(I)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/facebook/orca/maps/MapClickableImageView;->setClickable(Z)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/facebook/orca/maps/MapClickableImageView;->setFocusable(Z)V

    .line 50
    sget v0, Lcom/facebook/orca/R$drawable;->orca_image_attachment_background:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/maps/MapClickableImageView;->setBackgroundResource(I)V

    .line 51
    new-instance v0, Lcom/facebook/orca/maps/MapClickableImageView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/maps/MapClickableImageView$1;-><init>(Lcom/facebook/orca/maps/MapClickableImageView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/maps/MapClickableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/facebook/orca/R$id;->map_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/maps/MapClickableImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->c:Lcom/facebook/orca/images/UrlImage;

    .line 59
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/maps/MapClickableImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->b:Lcom/facebook/orca/threads/Message;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->c:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->c:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0}, Lcom/facebook/orca/images/UrlImage;->getHeight()I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/facebook/orca/maps/MapClickableImageView;->c:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v1}, Lcom/facebook/orca/images/UrlImage;->getWidth()I

    move-result v1

    .line 90
    invoke-virtual {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/facebook/orca/common/util/SizeUtil;->c(Landroid/content/Context;I)I

    move-result v2

    .line 91
    invoke-virtual {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/facebook/orca/common/util/SizeUtil;->c(Landroid/content/Context;I)I

    move-result v3

    .line 93
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->a:Lcom/facebook/orca/maps/MapsUtil;

    iget-object v1, p0, Lcom/facebook/orca/maps/MapClickableImageView;->b:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/orca/maps/MapsUtil;->a(Lcom/facebook/orca/threads/Message;II)Landroid/net/Uri;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/facebook/orca/maps/MapClickableImageView;->c:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->c:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->b:Lcom/facebook/orca/threads/Message;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->a:Lcom/facebook/orca/maps/MapsUtil;

    iget-object v0, p0, Lcom/facebook/orca/maps/MapClickableImageView;->b:Lcom/facebook/orca/threads/Message;

    invoke-static {v0}, Lcom/facebook/orca/maps/MapsUtil;->a(Lcom/facebook/orca/threads/Message;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
    .end annotation

    .prologue
    .line 73
    invoke-super/range {p0 .. p5}, Lcom/facebook/orca/activity/CustomView;->onLayout(ZIIII)V

    .line 74
    new-instance v0, Lcom/facebook/orca/maps/MapClickableImageView$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/maps/MapClickableImageView$2;-><init>(Lcom/facebook/orca/maps/MapClickableImageView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/maps/MapClickableImageView;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/maps/MapClickableImageView;->b:Lcom/facebook/orca/threads/Message;

    .line 67
    invoke-direct {p0}, Lcom/facebook/orca/maps/MapClickableImageView;->c()V

    .line 68
    return-void
.end method
