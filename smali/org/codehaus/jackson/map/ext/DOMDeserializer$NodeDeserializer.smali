.class public Lorg/codehaus/jackson/map/ext/DOMDeserializer$NodeDeserializer;
.super Lorg/codehaus/jackson/map/ext/DOMDeserializer;
.source "DOMDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ext/DOMDeserializer",
        "<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ext/DOMDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Lorg/codehaus/jackson/map/ext/DOMDeserializer$NodeDeserializer;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ext/DOMDeserializer$NodeDeserializer;->b(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method
