.class public final Lorg/codehaus/jackson/impl/JsonReadContext;
.super Lorg/codehaus/jackson/JsonStreamContext;
.source "JsonReadContext.java"


# instance fields
.field private c:Lorg/codehaus/jackson/impl/JsonReadContext;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lorg/codehaus/jackson/impl/JsonReadContext;


# direct methods
.method private constructor <init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->g:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 45
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->a:I

    .line 46
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->c:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 47
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->d:I

    .line 48
    iput p4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->e:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->b:I

    .line 50
    return-void
.end method

.method public static a(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method

.method private a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->a:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->b:I

    .line 56
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->d:I

    .line 57
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->e:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->f:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;
    .locals 6
    .parameter

    .prologue
    .line 117
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    const-wide/16 v2, -0x1

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->e:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->f:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public final b(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->g:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->g:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(III)V

    goto :goto_0
.end method

.method public final c(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->g:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->g:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 87
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(III)V

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->c:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->b:I

    .line 135
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->a:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->a:I

    packed-switch v1, :pswitch_data_0

    .line 178
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 167
    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/util/CharTypes;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
