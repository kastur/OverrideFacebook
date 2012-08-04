.class Lcom/facebook/orca/threadview/ThreadViewActivity$6;
.super Ljava/lang/Object;
.source "ThreadViewActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$6;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 652
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$6;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    .line 653
    return-void
.end method
