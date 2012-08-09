.class public Lorg/codehaus/jackson/map/ext/CoreXMLSerializers;
.super Ljava/lang/Object;
.source "CoreXMLSerializers.java"

# interfaces
.implements Lorg/codehaus/jackson/map/util/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/codehaus/jackson/map/util/Provider",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lorg/codehaus/jackson/map/JsonSerializer",
        "<*>;>;>;"
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ext/CoreXMLSerializers;->a:Ljava/util/HashMap;

    .line 44
    sget-object v0, Lorg/codehaus/jackson/map/ser/ToStringSerializer;->a:Lorg/codehaus/jackson/map/ser/ToStringSerializer;

    .line 45
    sget-object v1, Lorg/codehaus/jackson/map/ext/CoreXMLSerializers;->a:Ljava/util/HashMap;

    const-class v2, Ljavax/xml/datatype/Duration;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lorg/codehaus/jackson/map/ext/CoreXMLSerializers;->a:Ljava/util/HashMap;

    const-class v2, Ljavax/xml/datatype/XMLGregorianCalendar;

    new-instance v3, Lorg/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lorg/codehaus/jackson/map/ext/CoreXMLSerializers;->a:Ljava/util/HashMap;

    const-class v2, Ljavax/xml/namespace/QName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lorg/codehaus/jackson/map/ext/CoreXMLSerializers;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
