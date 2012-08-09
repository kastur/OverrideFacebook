.class public Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URLDeserializer;
.super Lorg/codehaus/jackson/map/deser/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/FromStringDeserializer",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .parameter

    .prologue
    .line 137
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-static {p1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URLDeserializer;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
