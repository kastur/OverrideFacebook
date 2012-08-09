.class public Lcom/facebook/apache/commons/codec/StringEncoderComparator;
.super Ljava/lang/Object;
.source "StringEncoderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Lcom/facebook/apache/commons/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/commons/codec/StringEncoderComparator;->a:Lcom/facebook/apache/commons/codec/StringEncoder;

    .line 48
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/facebook/apache/commons/codec/StringEncoder;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 77
    const/4 v1, 0x0

    invoke-interface {v1, p2}, Lcom/facebook/apache/commons/codec/StringEncoder;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 78
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/facebook/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method
