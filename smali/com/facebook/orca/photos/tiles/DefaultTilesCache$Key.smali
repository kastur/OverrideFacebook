.class public Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;
.super Ljava/lang/Object;
.source "DefaultTilesCache.java"


# instance fields
.field private final a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    .line 32
    iput p2, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->b:I

    .line 33
    iput p3, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->c:I

    .line 34
    iput p4, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->d:I

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 40
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

    .line 42
    :cond_3
    check-cast p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;

    .line 44
    iget v2, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->b:I

    iget v3, p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 45
    :cond_4
    iget v2, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->c:I

    iget v3, p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 46
    :cond_5
    iget v2, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->d:I

    iget v3, p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->d:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 47
    :cond_6
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    iget-object v3, p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->hashCode()I

    move-result v0

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->b:I

    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->c:I

    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->d:I

    add-int/2addr v0, v1

    .line 58
    return v0
.end method
