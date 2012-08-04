.class public Lorg/codehaus/jackson/map/ext/DOMDeserializer$DocumentDeserializer;
.super Lorg/codehaus/jackson/map/ext/DOMDeserializer;
.source "DOMDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ext/DOMDeserializer",
        "<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/w3c/dom/Document;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ext/DOMDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {p1}, Lorg/codehaus/jackson/map/ext/DOMDeserializer$DocumentDeserializer;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ext/DOMDeserializer$DocumentDeserializer;->b(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method
