.class public Lcom/facebook/orca/share/ShareRenderingLogic;
.super Ljava/lang/Object;
.source "ShareRenderingLogic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/Share;

    .line 21
    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 22
    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/share/Share;)Lcom/facebook/orca/share/ShareMedia;
    .locals 4
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/facebook/orca/share/Share;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareMedia;

    .line 29
    const-string v2, "link"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    :cond_1
    :goto_0
    return-object v0

    .line 31
    :cond_2
    const-string v2, "photo"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    const-string v2, "video"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 37
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
