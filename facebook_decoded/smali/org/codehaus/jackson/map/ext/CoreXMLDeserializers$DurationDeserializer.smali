.class public Lorg/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;
.super Lorg/codehaus/jackson/map/deser/FromStringDeserializer;
.source "CoreXMLDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/FromStringDeserializer",
        "<",
        "Ljavax/xml/datatype/Duration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Ljavax/xml/datatype/Duration;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .locals 1
    .parameter

    .prologue
    .line 78
    sget-object v0, Lorg/codehaus/jackson/map/ext/CoreXMLDeserializers;->a:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p1}, Lorg/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;->a(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method
