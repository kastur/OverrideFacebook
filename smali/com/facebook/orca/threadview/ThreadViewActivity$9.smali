.class Lcom/facebook/orca/threadview/ThreadViewActivity$9;
.super Ljava/lang/Object;
.source "ThreadViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/common/collect/ImmutableList;

.field private synthetic b:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$9;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$9;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$9;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$9;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threadview/ThreadViewActivity;Ljava/lang/String;)V

    .line 1283
    return-void
.end method
