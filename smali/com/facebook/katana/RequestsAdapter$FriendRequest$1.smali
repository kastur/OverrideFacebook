.class Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;
.super Ljava/lang/Object;
.source "RequestsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/RequestsAdapter$FriendRequest;


# direct methods
.method constructor <init>(Lcom/facebook/katana/RequestsAdapter$FriendRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;->a:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;->a:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-object v0, v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->e:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->c(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;->a:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-object v1, v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 187
    return-void
.end method
