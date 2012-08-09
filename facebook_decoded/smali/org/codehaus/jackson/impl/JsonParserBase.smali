.class public abstract Lorg/codehaus/jackson/impl/JsonParserBase;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "JsonParserBase.java"


# instance fields
.field protected final c:Lorg/codehaus/jackson/io/IOContext;

.field protected d:I

.field protected e:I

.field protected f:J

.field protected g:I

.field protected h:I

.field protected i:J

.field protected j:I

.field protected k:I

.field protected l:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected m:Lorg/codehaus/jackson/JsonToken;

.field protected final n:Lorg/codehaus/jackson/util/TextBuffer;

.field protected o:[C

.field protected p:Z

.field protected q:[B

.field private r:Z

.field private s:Lorg/codehaus/jackson/util/ByteArrayBuilder;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonParserMinimalBase;-><init>()V

    .line 51
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->d:I

    .line 56
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->e:I

    .line 68
    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->f:J

    .line 74
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->g:I

    .line 82
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->h:I

    .line 98
    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->i:J

    .line 103
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->j:I

    .line 109
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->k:I

    .line 148
    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->o:[C

    .line 155
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->p:Z

    .line 161
    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->s:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 180
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->a:I

    .line 181
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    .line 182
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->d()Lorg/codehaus/jackson/util/TextBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    .line 183
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->j:I

    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->k:I

    invoke-static {v0, v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 184
    return-void
.end method

.method private J()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->i:J

    return-wide v0
.end method

.method private K()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->j:I

    return v0
.end method

.method private L()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->k:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected final A()V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->G()V

    .line 307
    :cond_0
    return-void
.end method

.method protected abstract B()Z
.end method

.method protected abstract C()V
.end method

.method protected D()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->a()V

    .line 338
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->o:[C

    .line 339
    if-eqz v0, :cond_0

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->o:[C

    .line 341
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->c([C)V

    .line 343
    :cond_0
    return-void
.end method

.method protected final E()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": expected close marker for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->c(Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method public final F()Lorg/codehaus/jackson/util/ByteArrayBuilder;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->s:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->s:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 384
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->s:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->s:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a()V

    goto :goto_0
.end method

.method protected final a(IC)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected close marker \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->d(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->r:Z

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->r:Z

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->D()V

    .line 226
    :cond_0
    return-void

    .line 223
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->D()V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->g()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Lorg/codehaus/jackson/JsonLocation;
    .locals 6

    .prologue
    .line 245
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->J()J

    move-result-wide v2

    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->K()I

    move-result v4

    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->L()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final i()Lorg/codehaus/jackson/JsonLocation;
    .locals 8

    .prologue
    .line 258
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 259
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->f:J

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->d:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->g:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase$1;->a:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 282
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 277
    :pswitch_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->p:Z

    goto :goto_0

    .line 279
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
