.class public Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;
.super Lcom/facebook/orca/activity/CustomView;
.source "ThreadViewNameAndIconDetailsItem.java"


# instance fields
.field private a:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/orca/images/UrlImage;

.field private e:Lcom/facebook/orca/threads/ThreadSummary;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b()V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->c()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 61
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 62
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    .line 64
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_view_name_and_icon_details_items:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(I)V

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 67
    sget v0, Lcom/facebook/orca/R$drawable;->orca_item_background_holo_light:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->setBackgroundResource(I)V

    .line 72
    :goto_0
    sget v0, Lcom/facebook/orca/R$id;->thread_view_details_item_value:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->c:Landroid/widget/TextView;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->c:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    :cond_0
    sget v0, Lcom/facebook/orca/R$id;->thread_view_details_item_thread_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setFocusable(Z)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setClickable(Z)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void

    .line 69
    :cond_1
    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v1, "threadId"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "hasPictureHash"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v2, v0, v0}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    if-eqz p2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a:Lcom/facebook/orca/cache/ThreadDisplayCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    goto :goto_0
.end method
