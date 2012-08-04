.class final Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;
.super Ljava/lang/Object;
.source "ObjectBuffer.java"


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->a:[Ljava/lang/Object;

    .line 243
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->b:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 254
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->b:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    .line 255
    return-void
.end method

.method public final a()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->b:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    return-object v0
.end method
