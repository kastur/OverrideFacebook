.class public Lcom/facebook/orca/threadview/RowTypingItem;
.super Lcom/facebook/orca/threadview/RowItem;
.source "RowTypingItem.java"


# instance fields
.field private final a:Lcom/facebook/orca/threads/ParticipantInfo;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threads/ParticipantInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowItem;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/orca/threadview/RowTypingItem;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x6

    return v0
.end method

.method public final b()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowTypingItem;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 33
    instance-of v0, p1, Lcom/facebook/orca/threadview/RowTypingItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowTypingItem;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    check-cast p1, Lcom/facebook/orca/threadview/RowTypingItem;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowTypingItem;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowTypingItem;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RowTypingItem{otherUser="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/orca/threadview/RowTypingItem;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
