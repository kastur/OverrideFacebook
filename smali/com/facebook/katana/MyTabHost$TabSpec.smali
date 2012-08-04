.class public Lcom/facebook/katana/MyTabHost$TabSpec;
.super Ljava/lang/Object;
.source "MyTabHost.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/view/View;

.field private c:Lcom/facebook/katana/MyTabHost$ContentStrategy;

.field private synthetic d:Lcom/facebook/katana/MyTabHost;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->d:Lcom/facebook/katana/MyTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->a:Ljava/lang/String;

    .line 352
    iput-object p3, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->b:Landroid/view/View;

    .line 353
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/view/View;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/MyTabHost$TabSpec;-><init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/MyTabHost$TabSpec;)Lcom/facebook/katana/MyTabHost$ContentStrategy;
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->c:Lcom/facebook/katana/MyTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;
    .locals 4
    .parameter

    .prologue
    .line 360
    new-instance v0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->d:Lcom/facebook/katana/MyTabHost;

    iget-object v2, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;-><init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/content/Intent;B)V

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->c:Lcom/facebook/katana/MyTabHost$ContentStrategy;

    .line 361
    return-object p0
.end method
