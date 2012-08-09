.class Lcom/facebook/katana/ui/PopupViewDelegate$1;
.super Ljava/lang/Object;
.source "PopupViewDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/PopupViewDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ui/PopupViewDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/katana/ui/PopupViewDelegate$1;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    invoke-static {}, Lcom/facebook/katana/ui/PopupViewDelegate;->h()[I

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 53
    iget-object v4, p0, Lcom/facebook/katana/ui/PopupViewDelegate$1;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-static {v4, v3}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Lcom/facebook/katana/ui/PopupViewDelegate;I)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
