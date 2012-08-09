.class public Lcom/facebook/orca/users/UserIdentifierKey;
.super Ljava/lang/Object;
.source "UserIdentifierKey.java"


# instance fields
.field private final a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/orca/users/UserIdentifierKey;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    .line 16
    iput-object p2, p0, Lcom/facebook/orca/users/UserIdentifierKey;->b:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    if-ne p0, p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 24
    :cond_3
    check-cast p1, Lcom/facebook/orca/users/UserIdentifierKey;

    .line 26
    iget-object v2, p0, Lcom/facebook/orca/users/UserIdentifierKey;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/orca/users/UserIdentifierKey;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/orca/users/UserIdentifierKey;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 28
    goto :goto_0

    .line 26
    :cond_5
    iget-object v2, p1, Lcom/facebook/orca/users/UserIdentifierKey;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 29
    :cond_6
    iget-object v2, p0, Lcom/facebook/orca/users/UserIdentifierKey;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    iget-object v3, p1, Lcom/facebook/orca/users/UserIdentifierKey;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/users/UserIdentifierKey;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/users/UserIdentifierKey;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->hashCode()I

    move-result v0

    .line 37
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/orca/users/UserIdentifierKey;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/users/UserIdentifierKey;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 38
    return v0

    :cond_1
    move v0, v1

    .line 36
    goto :goto_0
.end method
