.class Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field private a:[B

.field private b:[B

.field private c:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>([B)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x40

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->a:[B

    .line 1249
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->b:[B

    .line 1251
    array-length v0, p1

    .line 1252
    if-le v0, v4, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1255
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 1256
    array-length v0, p1

    .line 1258
    :cond_0
    const/4 v1, 0x0

    .line 1259
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1260
    iget-object v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->a:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1261
    iget-object v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->b:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1243
    new-instance v1, Lcom/facebook/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting md5 message digest implementation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1264
    :goto_1
    if-ge v0, v4, :cond_1

    .line 1265
    iget-object v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->a:[B

    const/16 v2, 0x36

    aput-byte v2, v1, v0

    .line 1266
    iget-object v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->b:[B

    const/16 v2, 0x5c

    aput-byte v2, v1, v0

    .line 1267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 1272
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1274
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method final a([B)V
    .locals 1
    .parameter

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1286
    return-void
.end method

.method final a()[B
    .locals 3

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1279
    iget-object v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->b:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1280
    iget-object v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method
