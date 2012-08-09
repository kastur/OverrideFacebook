.class Lcom/facebook/katana/ProfileTabHostActivity$1;
.super Ljava/lang/Object;
.source "ProfileTabHostActivity.java"

# interfaces
.implements Lcom/facebook/katana/TabProgressListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ProfileTabHostActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity$1;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(Z)V
    .locals 2
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$1;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const v1, 0x7f0802ef

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 374
    return-void

    .line 372
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
