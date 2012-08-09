.class Lcom/facebook/katana/RequestsAdapter$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "RequestsAdapter.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/RequestsAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/RequestsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$1;->a:Lcom/facebook/katana/RequestsAdapter;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    if-eqz p4, :cond_0

    .line 51
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$1;->a:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->a(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p4, Lcom/facebook/katana/binding/ProfileImage;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p4}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a(Landroid/graphics/Bitmap;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p1, :cond_3

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 64
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$1;->a:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v1}, Lcom/facebook/katana/RequestsAdapter;->a(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$1;->a:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->b(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    .line 77
    iget v2, v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a(I)V

    goto :goto_1

    .line 82
    :cond_3
    return-void
.end method

.method public final b(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$1;->a:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->a(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    .line 94
    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a()Lcom/facebook/katana/RequestsAdapter$RequestState;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a(Lcom/facebook/katana/RequestsAdapter$RequestState;)V

    .line 106
    :cond_0
    :goto_1
    return-void

    .line 96
    :cond_1
    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$1;->a:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v1}, Lcom/facebook/katana/RequestsAdapter;->c(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b030a

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 102
    if-eqz v0, :cond_0

    .line 103
    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a(Lcom/facebook/katana/RequestsAdapter$RequestState;)V

    goto :goto_1
.end method
