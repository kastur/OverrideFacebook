.class public Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;
.super Ljava/lang/Object;
.source "BaseAdapter.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->a:Ljava/lang/String;

    .line 347
    iput p2, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->b:I

    .line 348
    iput p3, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->c:I

    .line 349
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->a:Ljava/lang/String;

    return-object v0
.end method
