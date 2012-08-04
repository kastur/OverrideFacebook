.class public abstract Lcom/facebook/orca/users/UserIdentifier;
.super Ljava/lang/Object;
.source "UserIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

.field private b:Lcom/facebook/orca/users/UserIdentifierKey;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/users/UserIdentifier;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final c()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/users/UserIdentifier;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    return-object v0
.end method

.method public final d()Lcom/facebook/orca/users/UserIdentifierKey;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/users/UserIdentifier;->b:Lcom/facebook/orca/users/UserIdentifierKey;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/facebook/orca/users/UserIdentifierKey;

    iget-object v1, p0, Lcom/facebook/orca/users/UserIdentifier;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserIdentifier;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserIdentifierKey;-><init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/users/UserIdentifier;->b:Lcom/facebook/orca/users/UserIdentifierKey;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/UserIdentifier;->b:Lcom/facebook/orca/users/UserIdentifierKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserIdentifier;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
