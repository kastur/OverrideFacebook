.class public final Lorg/codehaus/jackson/sym/Name1;
.super Lorg/codehaus/jackson/sym/Name;
.source "Name1.java"


# static fields
.field private static a:Lorg/codehaus/jackson/sym/Name1;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lorg/codehaus/jackson/sym/Name1;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/jackson/sym/Name1;->a:Lorg/codehaus/jackson/sym/Name1;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lorg/codehaus/jackson/sym/Name1;->b:I

    .line 23
    return-void
.end method

.method static final b()Lorg/codehaus/jackson/sym/Name1;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/codehaus/jackson/sym/Name1;->a:Lorg/codehaus/jackson/sym/Name1;

    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lorg/codehaus/jackson/sym/Name1;->b:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lorg/codehaus/jackson/sym/Name1;->b:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p2, v0, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lorg/codehaus/jackson/sym/Name1;->b:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
