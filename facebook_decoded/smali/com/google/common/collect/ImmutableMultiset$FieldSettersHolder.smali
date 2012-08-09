.class Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "java serialization is not supported."
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 251
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    .line 253
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
