.class Lcom/facebook/katana/binding/AppSession$4;
.super Ljava/lang/Thread;
.source "AppSession.java"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3893
    iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$4;->b:Lcom/facebook/katana/binding/AppSession;

    iput-object p2, p0, Lcom/facebook/katana/binding/AppSession$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$4;->b:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$4;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V

    .line 3897
    return-void
.end method
