.class public final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# instance fields
.field private a:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field private b:Z

.field private c:I

.field private d:I

.field private e:[I

.field private f:[Lorg/codehaus/jackson/sym/Name;

.field private g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

.field private h:I

.field private i:I

.field private transient j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b:Z

    .line 206
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b(I)V

    .line 221
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 229
    iput-boolean p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b:Z

    .line 232
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    .line 233
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    .line 234
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    .line 235
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    .line 236
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 237
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    .line 238
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->j:Z

    .line 241
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->k:Z

    .line 242
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->l:Z

    .line 243
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->m:Z

    .line 244
    return-void
.end method

.method public static a()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(IZ)V

    return-object v0
.end method

.method private static a(ILjava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 888
    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    .line 889
    packed-switch p3, :pswitch_data_0

    .line 900
    :cond_0
    new-array v2, p3, [I

    move v0, v1

    .line 901
    :goto_0
    if-ge v0, p3, :cond_1

    .line 902
    aget v1, p2, v0

    aput v1, v2, v0

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :pswitch_0
    new-instance v0, Lorg/codehaus/jackson/sym/Name1;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lorg/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 904
    :goto_1
    return-object v0

    .line 893
    :pswitch_1
    new-instance v0, Lorg/codehaus/jackson/sym/Name2;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lorg/codehaus/jackson/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_1

    .line 895
    :pswitch_2
    new-instance v0, Lorg/codehaus/jackson/sym/Name3;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 904
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/sym/NameN;

    invoke-direct {v0, p1, p0, v2, p3}, Lorg/codehaus/jackson/sym/NameN;-><init>(Ljava/lang/String;I[II)V

    goto :goto_1

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILorg/codehaus/jackson/sym/Name;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 623
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->k:Z

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->j()V

    .line 627
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->j:Z

    if-eqz v0, :cond_1

    .line 628
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g()V

    .line 631
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    .line 636
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    and-int v1, p1, v0

    .line 637
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    .line 638
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    shl-int/lit8 v2, p1, 0x8

    aput v2, v0, v1

    .line 639
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->l:Z

    if-eqz v0, :cond_2

    .line 640
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->l()V

    .line 642
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    aput-object p2, v0, v1

    .line 679
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    array-length v0, v0

    .line 680
    iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    shr-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_3

    .line 681
    shr-int/lit8 v1, v0, 0x2

    .line 685
    iget v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_9

    .line 686
    iput-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->j:Z

    .line 692
    :cond_3
    :goto_1
    return-void

    .line 647
    :cond_4
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->m:Z

    if-eqz v0, :cond_5

    .line 648
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->k()V

    .line 651
    :cond_5
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    .line 652
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    aget v2, v0, v1

    .line 653
    and-int/lit16 v0, v2, 0xff

    .line 654
    if-nez v0, :cond_8

    .line 655
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    const/16 v3, 0xfe

    if-gt v0, v3, :cond_7

    .line 656
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 657
    iget v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 659
    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    array-length v3, v3

    if-lt v0, v3, :cond_6

    .line 660
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->m()V

    .line 666
    :cond_6
    :goto_2
    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    and-int/lit16 v2, v2, -0x100

    add-int/lit8 v4, v0, 0x1

    or-int/2addr v2, v4

    aput v2, v3, v1

    .line 672
    :goto_3
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    new-instance v2, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v3, v3, v0

    invoke-direct {v2, p2, v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v2, v1, v0

    goto :goto_0

    .line 663
    :cond_7
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i()I

    move-result v0

    goto :goto_2

    .line 668
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 687
    :cond_9
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    if-lt v0, v1, :cond_3

    .line 688
    iput-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->j:Z

    goto :goto_1
.end method

.method private declared-synchronized a(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
    .locals 2
    .parameter

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    .line 266
    iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    .line 294
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_1
    invoke-direct {p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e()I

    move-result v0

    const/16 v1, 0x1770

    if-le v0, v1, :cond_1

    .line 282
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :cond_1
    :try_start_2
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    .line 285
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    .line 286
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->k:Z

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->l:Z

    .line 289
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    .line 290
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 291
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    .line 292
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static b(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 520
    mul-int/lit8 v0, p0, 0x1f

    add-int/2addr v0, p1

    .line 525
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 526
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 527
    return v0
.end method

.method private static b([II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 533
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 534
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 535
    mul-int/lit8 v1, v1, 0x1f

    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_0
    ushr-int/lit8 v0, v1, 0x10

    xor-int/2addr v0, v1

    .line 539
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 541
    return v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 248
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    .line 249
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    .line 250
    new-array v0, p1, [Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    .line 251
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->k:Z

    .line 252
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->l:Z

    .line 253
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->m:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 257
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 259
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->j:Z

    .line 260
    return-void
.end method

.method private static c(I)I
    .locals 2
    .parameter

    .prologue
    .line 512
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    .line 514
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 515
    return v0
.end method

.method public static c()Lorg/codehaus/jackson/sym/Name;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lorg/codehaus/jackson/sym/Name1;->b()Lorg/codehaus/jackson/sym/Name1;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->k:Z

    .line 299
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->l:Z

    .line 300
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->m:Z

    .line 301
    return-void
.end method

.method private e()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    return v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 696
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->j:Z

    .line 698
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->l:Z

    .line 704
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    .line 705
    array-length v3, v0

    .line 706
    add-int v0, v3, v3

    .line 711
    const/high16 v2, 0x1

    if-le v0, v2, :cond_1

    .line 712
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h()V

    .line 785
    :cond_0
    return-void

    .line 716
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    .line 717
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    .line 718
    iget-object v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    .line 719
    new-array v0, v0, [Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    move v2, v1

    move v0, v1

    .line 721
    :goto_0
    if-ge v2, v3, :cond_3

    .line 722
    aget-object v5, v4, v2

    .line 723
    if-eqz v5, :cond_2

    .line 724
    add-int/lit8 v0, v0, 0x1

    .line 725
    invoke-virtual {v5}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v6

    .line 726
    iget v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    and-int/2addr v7, v6

    .line 727
    iget-object v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    aput-object v5, v8, v7

    .line 728
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    shl-int/lit8 v6, v6, 0x8

    aput v6, v5, v7

    .line 721
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 736
    :cond_3
    iget v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 737
    if-eqz v4, :cond_0

    .line 741
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    .line 742
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 743
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->m:Z

    .line 745
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 746
    array-length v2, v5

    new-array v2, v2, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 747
    :goto_1
    if-ge v1, v4, :cond_9

    .line 748
    aget-object v2, v5, v1

    move-object v3, v2

    move v2, v0

    :goto_2
    if-eqz v3, :cond_8

    .line 749
    add-int/lit8 v2, v2, 0x1

    .line 750
    iget-object v6, v3, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->a:Lorg/codehaus/jackson/sym/Name;

    .line 751
    invoke-virtual {v6}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v0

    .line 752
    iget v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    and-int/2addr v7, v0

    .line 753
    iget-object v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    aget v8, v8, v7

    .line 754
    iget-object v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    aget-object v9, v9, v7

    if-nez v9, :cond_4

    .line 755
    iget-object v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    shl-int/lit8 v0, v0, 0x8

    aput v0, v8, v7

    .line 756
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    aput-object v6, v0, v7

    .line 748
    :goto_3
    iget-object v0, v3, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->b:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object v3, v0

    goto :goto_2

    .line 758
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    .line 759
    and-int/lit16 v0, v8, 0xff

    .line 760
    if-nez v0, :cond_7

    .line 761
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    const/16 v9, 0xfe

    if-gt v0, v9, :cond_6

    .line 762
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 763
    iget v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 765
    iget-object v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    array-length v9, v9

    if-lt v0, v9, :cond_5

    .line 766
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->m()V

    .line 772
    :cond_5
    :goto_4
    iget-object v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    and-int/lit16 v8, v8, -0x100

    add-int/lit8 v10, v0, 0x1

    or-int/2addr v8, v10

    aput v8, v9, v7

    .line 777
    :goto_5
    iget-object v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    new-instance v8, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v9, v9, v0

    invoke-direct {v8, v6, v9}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v8, v7, v0

    goto :goto_3

    .line 769
    :cond_6
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i()I

    move-result v0

    goto :goto_4

    .line 774
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 747
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 782
    :cond_9
    iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    if-eq v0, v1, :cond_0

    .line 783
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error: count after rehash "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; should be "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 793
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c:I

    .line 794
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 795
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 796
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 797
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->h:I

    .line 798
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    .line 799
    return-void
.end method

.method private i()I
    .locals 6

    .prologue
    .line 808
    iget-object v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 809
    const v3, 0x7fffffff

    .line 810
    const/4 v0, -0x1

    .line 812
    const/4 v1, 0x0

    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->i:I

    :goto_0
    if-ge v1, v5, :cond_1

    .line 813
    aget-object v2, v4, v1

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->a()I

    move-result v2

    .line 814
    if-ge v2, v3, :cond_2

    .line 815
    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    .line 822
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 812
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 822
    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 833
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    .line 834
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    array-length v1, v1

    .line 836
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    .line 837
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->k:Z

    .line 839
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 843
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 844
    if-nez v0, :cond_0

    .line 845
    const/16 v0, 0x20

    new-array v0, v0, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 851
    :goto_0
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->m:Z

    .line 852
    return-void

    .line 847
    :cond_0
    array-length v1, v0

    .line 848
    new-array v2, v1, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 849
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 856
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    .line 857
    array-length v1, v0

    .line 858
    new-array v2, v1, [Lorg/codehaus/jackson/sym/Name;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    .line 859
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->l:Z

    .line 861
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 865
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 866
    array-length v1, v0

    .line 867
    add-int v2, v1, v1

    new-array v2, v2, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 868
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .locals 1
    .parameter

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Lorg/codehaus/jackson/sym/Name;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-static {p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c(I)I

    move-result v2

    .line 344
    iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    and-int/2addr v1, v2

    .line 345
    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    aget v3, v3, v1

    .line 350
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    .line 352
    iget-object v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    aget-object v1, v4, v1

    .line 353
    if-nez v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 356
    :cond_1
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/sym/Name;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 357
    goto :goto_0

    .line 359
    :cond_2
    if-eqz v3, :cond_0

    .line 363
    :cond_3
    and-int/lit16 v1, v3, 0xff

    .line 364
    if-lez v1, :cond_0

    .line 365
    add-int/lit8 v1, v1, -0x1

    .line 366
    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v1, v3, v1

    .line 367
    if-eqz v1, :cond_0

    .line 368
    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(II)Lorg/codehaus/jackson/sym/Name;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-static {p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b(II)I

    move-result v2

    .line 394
    iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    and-int/2addr v1, v2

    .line 395
    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    aget v3, v3, v1

    .line 400
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    .line 402
    iget-object v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    aget-object v1, v4, v1

    .line 403
    if-nez v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 406
    :cond_1
    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/sym/Name;->a(II)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 407
    goto :goto_0

    .line 409
    :cond_2
    if-eqz v3, :cond_0

    .line 413
    :cond_3
    and-int/lit16 v1, v3, 0xff

    .line 414
    if-lez v1, :cond_0

    .line 415
    add-int/lit8 v1, v1, -0x1

    .line 416
    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v1, v3, v1

    .line 417
    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v1, v2, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b:Z

    if-eqz v0, :cond_0

    .line 496
    sget-object v0, Lorg/codehaus/jackson/util/InternCache;->a:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/InternCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 498
    :cond_0
    invoke-static {p2, p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b([II)I

    move-result v0

    .line 499
    invoke-static {v0, p1, p2, p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(ILjava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 500
    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(ILorg/codehaus/jackson/sym/Name;)V

    .line 501
    return-object v1
.end method

.method public final a([II)Lorg/codehaus/jackson/sym/Name;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-static {p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b([II)I

    move-result v2

    .line 451
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d:I

    and-int/2addr v0, v2

    .line 452
    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e:[I

    aget v3, v3, v0

    .line 453
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 454
    iget-object v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f:[Lorg/codehaus/jackson/sym/Name;

    aget-object v0, v4, v0

    .line 455
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/sym/Name;->a([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 470
    :cond_0
    :goto_0
    return-object v0

    .line 459
    :cond_1
    if-nez v3, :cond_2

    move-object v0, v1

    .line 460
    goto :goto_0

    .line 462
    :cond_2
    and-int/lit16 v0, v3, 0xff

    .line 463
    if-lez v0, :cond_3

    .line 464
    add-int/lit8 v0, v0, -0x1

    .line 465
    iget-object v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->g:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v3, v0

    .line 466
    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->a(I[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 470
    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V

    .line 195
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->d()V

    .line 197
    :cond_0
    return-void
.end method
