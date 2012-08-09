.class Lcom/facebook/katana/RequestsAdapter$OnClick;
.super Ljava/lang/Object;
.source "RequestsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

.field private b:Z

.field private synthetic c:Lcom/facebook/katana/RequestsAdapter;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/RequestsAdapter$FriendRequest;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->c:Lcom/facebook/katana/RequestsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->a:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    .line 249
    iput-boolean p3, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->b:Z

    .line 250
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->b:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->c:Lcom/facebook/katana/RequestsAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/katana/RequestsAdapter;->a:Z

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->a:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-boolean v0, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a(Lcom/facebook/katana/RequestsAdapter$RequestState;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->c:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->d(Lcom/facebook/katana/RequestsAdapter;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->c:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v1}, Lcom/facebook/katana/RequestsAdapter;->c(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->a:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-object v2, v2, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    iget-boolean v4, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->b:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    .line 259
    return-void

    .line 257
    :cond_1
    sget-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    goto :goto_0
.end method
