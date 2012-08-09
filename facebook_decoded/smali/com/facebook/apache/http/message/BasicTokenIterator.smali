.class public Lcom/facebook/apache/http/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lcom/facebook/apache/http/TokenIterator;


# instance fields
.field private a:Lcom/facebook/apache/http/HeaderIterator;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/HeaderIterator;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    .line 87
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/message/BasicTokenIterator;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->d:I

    .line 88
    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 167
    if-gez p1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 187
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderIterator;->a()Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    .line 179
    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/message/BasicTokenIterator;->b(I)I

    move-result v2

    .line 180
    if-gez v2, :cond_2

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->c:Ljava/lang/String;

    move v0, v1

    .line 182
    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/message/BasicTokenIterator;->c(I)I

    move-result v0

    goto :goto_1

    .line 185
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/apache/http/message/BasicTokenIterator;->d(I)I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/facebook/apache/http/message/BasicTokenIterator;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 350
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 227
    if-gez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Search position must not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    move v0, p1

    .line 233
    :goto_0
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 235
    iget-object v3, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v6, v1

    move v1, v0

    move v0, v6

    .line 236
    :goto_1
    if-nez v0, :cond_4

    if-ge v1, v3, :cond_4

    .line 238
    iget-object v4, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 239
    invoke-static {v4}, Lcom/facebook/apache/http/message/BasicTokenIterator;->a(C)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/facebook/apache/http/message/BasicTokenIterator;->b(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/message/BasicTokenIterator;->c(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    const/4 v0, 0x1

    goto :goto_1

    .line 246
    :cond_3
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid character before token (pos "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_4
    if-nez v0, :cond_6

    .line 252
    iget-object v3, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    invoke-interface {v3}, Lcom/facebook/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 253
    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    invoke-interface {v1}, Lcom/facebook/apache/http/HeaderIterator;->a()Lcom/facebook/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    move v1, v0

    move v0, v2

    .line 254
    goto :goto_0

    .line 256
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    :cond_6
    move v6, v0

    move v0, v1

    move v1, v6

    .line 259
    goto :goto_0

    .line 261
    :cond_7
    if-eqz v1, :cond_8

    :goto_2
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static b(C)Z
    .locals 1
    .parameter

    .prologue
    .line 369
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 4
    .parameter

    .prologue
    .line 283
    if-gez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Search position must not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 290
    :goto_0
    if-nez v0, :cond_4

    if-ge p1, v1, :cond_4

    .line 291
    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 292
    invoke-static {v2}, Lcom/facebook/apache/http/message/BasicTokenIterator;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {v2}, Lcom/facebook/apache/http/message/BasicTokenIterator;->b(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/apache/http/message/BasicTokenIterator;->c(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tokens without separator (pos "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_3
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid character after token (pos "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_4
    return p1
.end method

.method private c(C)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 388
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 393
    goto :goto_0

    .line 396
    :cond_2
    invoke-static {p1}, Lcom/facebook/apache/http/message/BasicTokenIterator;->d(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 397
    goto :goto_0
.end method

.method private d(I)I
    .locals 3
    .parameter

    .prologue
    .line 323
    if-gez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Token start position must not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 329
    add-int/lit8 v0, p1, 0x1

    .line 330
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/facebook/apache/http/message/BasicTokenIterator;->c(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    return v0
.end method

.method private static d(C)Z
    .locals 1
    .parameter

    .prologue
    .line 420
    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->c:Ljava/lang/String;

    .line 114
    iget v1, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->d:I

    invoke-direct {p0, v1}, Lcom/facebook/apache/http/message/BasicTokenIterator;->a(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->d:I

    .line 116
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicTokenIterator;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/facebook/apache/http/message/BasicTokenIterator;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
