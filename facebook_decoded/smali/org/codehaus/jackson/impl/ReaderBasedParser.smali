.class public Lorg/codehaus/jackson/impl/ReaderBasedParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;
.source "ReaderBasedParser.java"


# instance fields
.field private s:Lorg/codehaus/jackson/ObjectCodec;

.field private t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

.field private u:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    .line 51
    iput-object p4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->s:Lorg/codehaus/jackson/ObjectCodec;

    .line 52
    iput-object p5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 53
    return-void
.end method

.method private final J()Lorg/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->p:Z

    .line 377
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->m:Lorg/codehaus/jackson/JsonToken;

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->m:Lorg/codehaus/jackson/JsonToken;

    .line 380
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 381
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->j:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->k:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->b(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 385
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    .line 382
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->j:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->k:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->c(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private K()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x27

    .line 559
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 560
    const/4 v0, 0x0

    .line 561
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    .line 563
    if-ge v1, v2, :cond_3

    .line 564
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->a()[I

    move-result-object v3

    .line 565
    array-length v4, v3

    .line 568
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    aget-char v5, v5, v1

    .line 569
    if-ne v5, v7, :cond_1

    .line 570
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 571
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 572
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a([CIII)Ljava/lang/String;

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 574
    :cond_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-nez v6, :cond_3

    .line 575
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    .line 578
    add-int/lit8 v1, v1, 0x1

    .line 579
    if-lt v1, v2, :cond_0

    .line 582
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 583
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 585
    invoke-direct {p0, v2, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private L()Lorg/codehaus/jackson/JsonToken;
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x27

    .line 638
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->j()[C

    move-result-object v1

    .line 639
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->k()I

    move-result v0

    .line 642
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v2, v3, :cond_0

    .line 643
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    .line 647
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v2, v2, v3

    .line 649
    if-gt v2, v6, :cond_1

    .line 650
    if-ne v2, v6, :cond_2

    .line 655
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->W()C

    move-result v2

    .line 666
    :cond_1
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    .line 667
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v1

    .line 668
    const/4 v0, 0x0

    move v3, v0

    .line 671
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    .line 656
    :cond_2
    if-gt v2, v5, :cond_1

    .line 657
    if-eq v2, v5, :cond_3

    .line 658
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 661
    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(ILjava/lang/String;)V

    goto :goto_1

    .line 673
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 674
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method private M()V
    .locals 6

    .prologue
    .line 733
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 734
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    .line 736
    if-ge v0, v1, :cond_2

    .line 737
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->a()[I

    move-result-object v2

    .line 738
    array-length v3, v2

    .line 741
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    aget-char v4, v4, v0

    .line 742
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_1

    .line 743
    const/16 v1, 0x22

    if-ne v4, v1, :cond_2

    .line 744
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/TextBuffer;->a([CII)V

    .line 745
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 761
    :goto_0
    return-void

    .line 751
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 752
    if-lt v0, v1, :cond_0

    .line 758
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/TextBuffer;->b([CII)V

    .line 759
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 760
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->N()V

    goto :goto_0
.end method

.method private N()V
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 766
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->i()[C

    move-result-object v1

    .line 767
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->k()I

    move-result v0

    .line 770
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v2, v3, :cond_0

    .line 771
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v2

    if-nez v2, :cond_0

    .line 772
    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    .line 775
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v2, v2, v3

    .line 777
    if-gt v2, v6, :cond_1

    .line 778
    if-ne v2, v6, :cond_2

    .line 783
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->W()C

    move-result v2

    .line 794
    :cond_1
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    .line 795
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v1

    .line 796
    const/4 v0, 0x0

    move v3, v0

    .line 799
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    .line 784
    :cond_2
    if-gt v2, v5, :cond_1

    .line 785
    if-eq v2, v5, :cond_3

    .line 786
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 789
    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(ILjava/lang/String;)V

    goto :goto_1

    .line 801
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 802
    return-void

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method private O()V
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    .line 814
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 815
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    .line 816
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    .line 819
    :goto_0
    if-lt v1, v0, :cond_1

    .line 820
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 821
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    .line 824
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 825
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    .line 827
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 829
    if-gt v1, v6, :cond_4

    .line 830
    if-ne v1, v6, :cond_2

    .line 835
    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 836
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->W()C

    .line 837
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 838
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    goto :goto_0

    .line 839
    :cond_2
    if-gt v1, v5, :cond_4

    .line 840
    if-ne v1, v5, :cond_3

    .line 841
    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 842
    return-void

    .line 844
    :cond_3
    const/16 v4, 0x20

    if-ge v1, v4, :cond_4

    .line 845
    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 846
    const-string v4, "string value"

    invoke-virtual {p0, v1, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(ILjava/lang/String;)V

    :cond_4
    move v1, v2

    .line 850
    goto :goto_0
.end method

.method private P()V
    .locals 2

    .prologue
    .line 894
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 896
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 899
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->g:I

    .line 900
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->h:I

    .line 901
    return-void
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->g:I

    .line 906
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->h:I

    .line 907
    return-void
.end method

.method private final R()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 912
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 913
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    .line 914
    if-le v0, v3, :cond_3

    .line 915
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 916
    return v0

    .line 918
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->T()V

    goto :goto_0

    .line 919
    :cond_3
    if-eq v0, v3, :cond_0

    .line 920
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 921
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->Q()V

    goto :goto_0

    .line 922
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 923
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->P()V

    goto :goto_0

    .line 924
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 925
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(I)V

    goto :goto_0

    .line 929
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final S()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 935
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 936
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    .line 937
    if-le v0, v3, :cond_3

    .line 938
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 954
    :goto_1
    return v0

    .line 941
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->T()V

    goto :goto_0

    .line 942
    :cond_3
    if-eq v0, v3, :cond_0

    .line 943
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 944
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->Q()V

    goto :goto_0

    .line 945
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 946
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->P()V

    goto :goto_0

    .line 947
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 948
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(I)V

    goto :goto_0

    .line 953
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->E()V

    .line 954
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final T()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 960
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    .line 964
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    .line 967
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    .line 968
    if-ne v0, v3, :cond_2

    .line 969
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->V()V

    .line 975
    :goto_0
    return-void

    .line 970
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 971
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->U()V

    goto :goto_0

    .line 973
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final U()V
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 982
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 983
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    .line 984
    if-gt v0, v3, :cond_0

    .line 985
    if-ne v0, v3, :cond_3

    .line 986
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 987
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 990
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 1007
    :goto_1
    return-void

    .line 995
    :cond_3
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 996
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 997
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->Q()V

    goto :goto_0

    .line 998
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 999
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->P()V

    goto :goto_0

    .line 1000
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1001
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(I)V

    goto :goto_0

    .line 1006
    :cond_6
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final V()V
    .locals 3

    .prologue
    .line 1013
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    .line 1015
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1016
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1017
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->Q()V

    .line 1027
    :cond_2
    :goto_1
    return-void

    .line 1019
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1020
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->P()V

    goto :goto_1

    .line 1022
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1023
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(I)V

    goto :goto_0
.end method

.method private W()C
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1032
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v2, :cond_0

    .line 1033
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    .line 1037
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v2

    .line 1039
    sparse-switch v0, :sswitch_data_0

    .line 1062
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(C)C

    move-result v0

    .line 1080
    :goto_0
    :sswitch_0
    return v0

    .line 1042
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1044
    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 1046
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 1048
    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    .line 1050
    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 1067
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 1068
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v2, v3, :cond_1

    .line 1069
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1070
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    .line 1073
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v2, v2, v3

    .line 1074
    invoke-static {v2}, Lorg/codehaus/jackson/util/CharTypes;->a(I)I

    move-result v3

    .line 1075
    if-gez v3, :cond_2

    .line 1076
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    .line 1078
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 1039
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method private final a(Lorg/codehaus/jackson/Base64Variant;CI)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1204
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 1205
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(Lorg/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1207
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->W()C

    move-result v1

    .line 1209
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 1210
    if-nez p3, :cond_2

    .line 1211
    const/4 v0, -0x1

    .line 1219
    :cond_1
    return v0

    .line 1215
    :cond_2
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v0

    .line 1216
    if-gez v0, :cond_1

    .line 1217
    invoke-direct {p0, p1, v1, p3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(Lorg/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1236
    const/16 v0, 0x20

    if-gt p1, v0, :cond_1

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    :goto_0
    if-eqz p3, :cond_0

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1238
    :cond_1
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/Base64Variant;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1240
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1242
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1244
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(III)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x5c

    .line 442
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a([CII)V

    .line 447
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->i()[C

    move-result-object v1

    .line 448
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->k()I

    move-result v0

    .line 451
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v2, v3, :cond_0

    .line 452
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ": was expecting closing \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    .line 456
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v3, v2, v3

    .line 458
    if-gt v3, v5, :cond_2

    .line 459
    if-ne v3, v5, :cond_1

    .line 464
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->W()C

    move-result v2

    .line 474
    :goto_1
    mul-int/lit8 v4, p2, 0x1f

    add-int p2, v4, v3

    .line 476
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    .line 479
    array-length v0, v1

    if-lt v3, v0, :cond_4

    .line 480
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v1

    .line 481
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    :cond_1
    if-gt v3, p3, :cond_2

    .line 466
    if-eq v3, p3, :cond_3

    .line 467
    const/16 v2, 0x20

    if-ge v3, v2, :cond_2

    .line 470
    const-string v2, "name"

    invoke-virtual {p0, v3, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(ILjava/lang/String;)V

    :cond_2
    move v2, v3

    goto :goto_1

    .line 484
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 486
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    .line 487
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->d()[C

    move-result-object v1

    .line 488
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->c()I

    move-result v2

    .line 489
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->b()I

    move-result v0

    .line 491
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private a(II[I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a([CII)V

    .line 684
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->i()[C

    move-result-object v1

    .line 685
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->k()I

    move-result v0

    .line 686
    array-length v3, p3

    .line 689
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v2, v4, :cond_0

    .line 690
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v4, v2, v4

    .line 696
    if-gt v4, v3, :cond_2

    .line 697
    aget v2, p3, v4

    if-eqz v2, :cond_3

    .line 714
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 716
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    .line 717
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->d()[C

    move-result-object v1

    .line 718
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->c()I

    move-result v2

    .line 719
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->b()I

    move-result v0

    .line 721
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 700
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 704
    mul-int/lit8 v2, p2, 0x1f

    add-int p2, v2, v4

    .line 706
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    .line 709
    array-length v0, v1

    if-lt v2, v0, :cond_4

    .line 710
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v1

    .line 711
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    .line 97
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/impl/ReaderBasedParser$1;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lorg/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1225
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/JsonToken;)V
    .locals 5
    .parameter

    .prologue
    .line 860
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v1

    .line 861
    const/4 v0, 0x1

    .line 863
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 864
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v3, v4, :cond_0

    .line 865
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v3

    if-nez v3, :cond_0

    .line 866
    const-string v3, " in a value"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(Ljava/lang/String;)V

    .line 869
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v3, v3, v4

    .line 870
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 871
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->f(Ljava/lang/String;)V

    .line 873
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 879
    :cond_2
    return-void
.end method

.method private b(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 1093
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->F()Lorg/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v2

    .line 1100
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_1

    .line 1101
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->A()V

    .line 1103
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v1, v0, v1

    .line 1104
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 1105
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v0

    .line 1106
    if-gez v0, :cond_3

    .line 1107
    if-ne v1, v6, :cond_2

    .line 1108
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    .line 1177
    :goto_1
    return-object v0

    .line 1110
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1111
    if-ltz v0, :cond_0

    .line 1119
    :cond_3
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v1, v3, :cond_4

    .line 1120
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->A()V

    .line 1122
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v3, v1, v3

    .line 1123
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v1

    .line 1124
    if-gez v1, :cond_5

    .line 1125
    const/4 v1, 0x1

    invoke-direct {p0, p1, v3, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/Base64Variant;CI)I

    move-result v1

    .line 1127
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 1130
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v3, :cond_6

    .line 1131
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->A()V

    .line 1133
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v3, v0, v3

    .line 1134
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v0

    .line 1137
    if-gez v0, :cond_b

    .line 1138
    if-eq v0, v5, :cond_8

    .line 1140
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1141
    shr-int/lit8 v0, v1, 0x4

    .line 1142
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 1143
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    goto :goto_1

    .line 1145
    :cond_7
    const/4 v0, 0x2

    invoke-direct {p0, p1, v3, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1147
    :cond_8
    if-ne v0, v5, :cond_b

    .line 1149
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v3, :cond_9

    .line 1150
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->A()V

    .line 1152
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v3

    .line 1153
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/Base64Variant;->a(C)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected padding character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v7, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1157
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 1158
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto/16 :goto_0

    .line 1164
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 1166
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v3, :cond_c

    .line 1167
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->A()V

    .line 1169
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v3, v0, v3

    .line 1170
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v0

    .line 1171
    if-gez v0, :cond_f

    .line 1172
    if-eq v0, v5, :cond_e

    .line 1174
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1175
    shr-int/lit8 v0, v1, 0x2

    .line 1176
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    .line 1177
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    goto/16 :goto_1

    .line 1179
    :cond_d
    invoke-direct {p0, p1, v3, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1181
    :cond_e
    if-ne v0, v5, :cond_f

    .line 1188
    shr-int/lit8 v0, v1, 0x2

    .line 1189
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    goto/16 :goto_0

    .line 1195
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 1196
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c(I)V

    goto/16 :goto_0
.end method

.method private d(I)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x22

    .line 404
    if-eq p1, v7, :cond_0

    .line 405
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    .line 411
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 412
    const/4 v0, 0x0

    .line 413
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    .line 415
    if-ge v1, v2, :cond_3

    .line 416
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->a()[I

    move-result-object v3

    .line 417
    array-length v4, v3

    .line 420
    :cond_1
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    aget-char v5, v5, v1

    .line 421
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-eqz v6, :cond_2

    .line 422
    if-ne v5, v7, :cond_3

    .line 423
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 424
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 425
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 431
    if-lt v1, v2, :cond_1

    .line 434
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 435
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 436
    invoke-direct {p0, v2, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(I)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 507
    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->K()Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    .line 511
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    .line 514
    :cond_1
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->c()[I

    move-result-object v2

    .line 515
    array-length v3, v2

    .line 520
    if-ge p1, v3, :cond_6

    .line 521
    aget v0, v2, p1

    if-nez v0, :cond_5

    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-le p1, v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 525
    :goto_1
    if-nez v0, :cond_3

    .line 526
    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    .line 528
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 530
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    .line 532
    if-ge v0, v4, :cond_9

    .line 534
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    aget-char v5, v5, v0

    .line 535
    if-ge v5, v3, :cond_7

    .line 536
    aget v6, v2, v5

    if-eqz v6, :cond_8

    .line 537
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v2, -0x1

    .line 538
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 539
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    sub-int/2addr v0, v2

    invoke-virtual {v3, v4, v2, v0, v1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 521
    goto :goto_1

    .line 523
    :cond_6
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_1

    .line 541
    :cond_7
    int-to-char v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_8

    .line 542
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v2, -0x1

    .line 543
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 544
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    sub-int/2addr v0, v2

    invoke-virtual {v3, v4, v2, v0, v1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_8
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v5

    .line 547
    add-int/lit8 v0, v0, 0x1

    .line 548
    if-lt v0, v4, :cond_4

    .line 550
    :cond_9
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v3, v3, -0x1

    .line 551
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    .line 552
    invoke-direct {p0, v3, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(II[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f(I)Lorg/codehaus/jackson/JsonToken;
    .locals 3
    .parameter

    .prologue
    .line 598
    sparse-switch p1, :sswitch_data_0

    .line 628
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    .line 629
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 607
    :sswitch_0
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->L()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 612
    :sswitch_1
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Ljava/lang/String;I)Z

    .line 613
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 616
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    const-string v1, "expected \'NaN\' or a valid value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 621
    :sswitch_2
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->e:I

    if-lt v0, v1, :cond_2

    .line 622
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->B()Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->H()V

    .line 626
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 598
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x7d

    const/16 v6, 0x5d

    .line 239
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 240
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->J()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->O()V

    .line 245
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->S()I

    move-result v0

    .line 246
    if-gez v0, :cond_2

    .line 250
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->close()V

    .line 251
    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v1

    goto :goto_0

    .line 257
    :cond_2
    iget-wide v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->f:J

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->i:J

    .line 258
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->g:I

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->j:I

    .line 259
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->h:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->k:I

    .line 262
    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->q:[B

    .line 265
    if-ne v0, v6, :cond_4

    .line 266
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(IC)V

    .line 269
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->g()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 270
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 272
    :cond_4
    if-ne v0, v7, :cond_6

    .line 273
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 274
    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(IC)V

    .line 276
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->g()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 277
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 281
    :cond_6
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 282
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    .line 285
    :cond_7
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->R()I

    move-result v0

    .line 292
    :cond_8
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->c()Z

    move-result v1

    .line 293
    if-eqz v1, :cond_a

    .line 295
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(Ljava/lang/String;)V

    .line 297
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 298
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->R()I

    move-result v0

    .line 299
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_9

    .line 300
    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    .line 302
    :cond_9
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->R()I

    move-result v0

    .line 309
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 362
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->f(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 366
    :goto_1
    if-eqz v1, :cond_d

    .line 367
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->m:Lorg/codehaus/jackson/JsonToken;

    .line 368
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 311
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    .line 312
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 315
    :sswitch_1
    if-nez v1, :cond_b

    .line 316
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->j:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->k:I

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->b(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 318
    :cond_b
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 321
    :sswitch_2
    if-nez v1, :cond_c

    .line 322
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->j:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->k:I

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->c(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 324
    :cond_c
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 330
    :sswitch_3
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(ILjava/lang/String;)V

    .line 332
    :sswitch_4
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 333
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 336
    :sswitch_5
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 337
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 340
    :sswitch_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 341
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 359
    :sswitch_7
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 370
    :cond_d
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 309
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->q:[B

    if-nez v0, :cond_1

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->d(Ljava/lang/String;)V

    .line 207
    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    if-eqz v0, :cond_2

    .line 209
    :try_start_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->q:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    .line 218
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->q:[B

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public final b()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->s:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->close()V

    .line 392
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->t:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->b()V

    .line 393
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 82
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 83
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    .line 85
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->M()V

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->e()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a(Lorg/codehaus/jackson/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_4

    .line 115
    sget-object v0, Lorg/codehaus/jackson/impl/ReaderBasedParser$1;->a:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->p:Z

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->o:[C

    if-nez v2, :cond_2

    .line 122
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->a(I)[C

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->o:[C

    .line 126
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->o:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->p:Z

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->o:[C

    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->o:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 124
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->o:[C

    goto :goto_1

    .line 132
    :pswitch_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    if-eqz v0, :cond_3

    .line 133
    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    .line 134
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->M()V

    .line 139
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->d()[C

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final m()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 153
    sget-object v1, Lorg/codehaus/jackson/impl/ReaderBasedParser$1;->a:[I

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 168
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 156
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 158
    :pswitch_1
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    if-eqz v1, :cond_1

    .line 159
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    .line 160
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->M()V

    .line 165
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->b()I

    move-result v0

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final n()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lorg/codehaus/jackson/impl/ReaderBasedParser$1;->a:[I

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 183
    :pswitch_1
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    if-eqz v1, :cond_1

    .line 184
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->u:Z

    .line 185
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->M()V

    .line 190
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->c()I

    move-result v0

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
