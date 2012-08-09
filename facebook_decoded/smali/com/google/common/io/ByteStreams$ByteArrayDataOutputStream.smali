.class Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteArrayDataOutput;


# instance fields
.field private a:Ljava/io/DataOutput;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 415
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 416
    return-void
.end method

.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    .line 425
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .parameter

    .prologue
    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public write([B)V
    .locals 2
    .parameter

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeBoolean(Z)V
    .locals 2
    .parameter

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeByte(I)V
    .locals 2
    .parameter

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeChar(I)V
    .locals 2
    .parameter

    .prologue
    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChar(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChars(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeDouble(D)V
    .locals 2
    .parameter

    .prologue
    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeFloat(F)V
    .locals 2
    .parameter

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeInt(I)V
    .locals 2
    .parameter

    .prologue
    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeLong(J)V
    .locals 2
    .parameter

    .prologue
    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeShort(I)V
    .locals 2
    .parameter

    .prologue
    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->a:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
