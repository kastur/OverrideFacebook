.class Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    const v0, 0x67452301

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1070
    const v0, -0x10325477

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1071
    const v0, -0x67452302

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1072
    const v0, 0x10325476

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1073
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->e:J

    .line 1074
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    .line 1077
    return-void
.end method

.method private a([I)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x13

    const/16 v6, 0xb

    const/4 v5, 0x7

    const/4 v4, 0x3

    .line 1159
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1160
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1161
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1162
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v4

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1164
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1165
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1166
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1167
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1169
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1170
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1171
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1172
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1174
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1175
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1176
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1177
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1178
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 1135
    new-array v1, v5, [I

    .line 1137
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 1138
    iget-object v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    shl-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    shl-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    shl-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    shl-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1144
    :cond_0
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1145
    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1146
    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1147
    iget v4, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1148
    invoke-direct {p0, v1}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a([I)V

    .line 1149
    invoke-direct {p0, v1}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b([I)V

    .line 1150
    invoke-direct {p0, v1}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c([I)V

    .line 1151
    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1152
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1153
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1154
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1156
    return-void
.end method

.method private b([I)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v5, 0x3

    const v4, 0x5a827999

    .line 1181
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1182
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1183
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1184
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1186
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1187
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1188
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1189
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1191
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1192
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1193
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1194
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1196
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1197
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1198
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1199
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1201
    return-void
.end method

.method private c([I)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x3

    const v4, 0x6ed9eba1

    .line 1204
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1205
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1206
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1207
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1209
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1210
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1211
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1212
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1214
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1215
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1216
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1217
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1219
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1220
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1221
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1222
    iget v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1224
    return-void
.end method


# virtual methods
.method final a([B)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1083
    iget-wide v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->e:J

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    long-to-int v0, v2

    move v2, v0

    move v0, v1

    .line 1085
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 1089
    iget-object v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    .line 1090
    iget-object v4, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    invoke-static {p1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1091
    iget-wide v4, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->e:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->e:J

    .line 1093
    add-int/2addr v0, v3

    .line 1094
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b()V

    move v2, v1

    .line 1095
    goto :goto_0

    .line 1099
    :cond_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1100
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 1101
    iget-object v3, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->f:[B

    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    iget-wide v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->e:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->e:J

    .line 1103
    :cond_1
    return-void
.end method

.method final a()[B
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 1110
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->e:J

    const-wide/16 v3, 0x3f

    and-long/2addr v0, v3

    long-to-int v0, v0

    .line 1111
    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    rsub-int/lit8 v0, v0, 0x38

    .line 1112
    :goto_0
    add-int/lit8 v1, v0, 0x8

    new-array v3, v1, [B

    .line 1115
    const/16 v1, -0x80

    aput-byte v1, v3, v2

    move v1, v2

    .line 1117
    :goto_1
    if-ge v1, v8, :cond_1

    .line 1118
    add-int v4, v0, v1

    iget-wide v5, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->e:J

    const/4 v7, 0x3

    shl-long/2addr v5, v7

    mul-int/lit8 v7, v1, 0x8

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1111
    :cond_0
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0

    .line 1122
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a([B)V

    .line 1125
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1126
    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v0, v1, v2}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a([BII)V

    .line 1127
    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->b:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a([BII)V

    .line 1128
    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v0, v1, v8}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a([BII)V

    .line 1129
    iget v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$MD4;->d:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;->a([BII)V

    .line 1130
    return-object v0
.end method
