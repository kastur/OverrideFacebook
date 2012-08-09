.class public Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;
.super Ljava/lang/Object;
.source "SimpleKeyDeserializers.java"

# interfaces
.implements Lorg/codehaus/jackson/map/KeyDeserializers;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;->a:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
