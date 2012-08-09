.class public Lcom/facebook/orca/common/util/EditDistanceUtil;
.super Ljava/lang/Object;
.source "EditDistanceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 12
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 36
    if-nez v4, :cond_2

    move v0, v3

    .line 76
    :goto_0
    return v0

    .line 38
    :cond_2
    if-nez v3, :cond_3

    move v0, v4

    .line 39
    goto :goto_0

    .line 42
    :cond_3
    add-int/lit8 v0, v4, 0x1

    new-array v7, v0, [I

    .line 43
    add-int/lit8 v0, v4, 0x1

    new-array v0, v0, [I

    move v5, v1

    .line 54
    :goto_1
    if-gt v5, v4, :cond_4

    .line 55
    aput v5, v7, v5

    .line 54
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v2

    move-object v6, v0

    .line 58
    :goto_2
    if-gt v5, v3, :cond_7

    .line 59
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 60
    aput v5, v6, v1

    move v8, v2

    .line 62
    :goto_3
    if-gt v8, v4, :cond_6

    .line 63
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_5

    move v0, v1

    .line 65
    :goto_4
    add-int/lit8 v10, v8, -0x1

    aget v10, v6, v10

    add-int/lit8 v10, v10, 0x1

    aget v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v11, v8, -0x1

    aget v11, v7, v11

    add-int/2addr v0, v11

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v6, v8

    .line 62
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3

    :cond_5
    move v0, v2

    .line 63
    goto :goto_4

    .line 58
    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_2

    .line 76
    :cond_7
    aget v0, v7, v4

    goto :goto_0
.end method
