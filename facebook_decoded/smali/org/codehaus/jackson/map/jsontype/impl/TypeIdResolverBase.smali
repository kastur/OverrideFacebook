.class public abstract Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.super Ljava/lang/Object;
.source "TypeIdResolverBase.java"

# interfaces
.implements Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/type/TypeFactory;

.field protected final b:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->b:Lorg/codehaus/jackson/type/JavaType;

    .line 20
    iput-object p2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->a:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
