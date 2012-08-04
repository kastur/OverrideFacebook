.class public Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
.super Lorg/codehaus/jackson/map/ser/FilterProvider;
.source "SimpleFilterProvider.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/FilterProvider;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    .line 73
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
