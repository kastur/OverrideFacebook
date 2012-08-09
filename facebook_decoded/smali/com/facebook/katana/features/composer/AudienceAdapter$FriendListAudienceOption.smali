.class public Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;
.super Ljava/lang/Object;
.source "AudienceAdapter.java"

# interfaces
.implements Lcom/facebook/katana/features/composer/AudienceOption;


# instance fields
.field private a:Lcom/facebook/katana/model/FriendList;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/FriendList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p2, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;->a:Lcom/facebook/katana/model/FriendList;

    .line 431
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 435
    const v0, 0x7f020017

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;->a:Lcom/facebook/katana/model/FriendList;

    iget-object v0, v0, Lcom/facebook/katana/model/FriendList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/facebook/katana/features/composer/AudienceOption$Type;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    return-object v0
.end method

.method public final d()Lcom/facebook/katana/model/FriendList;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;->a:Lcom/facebook/katana/model/FriendList;

    return-object v0
.end method
