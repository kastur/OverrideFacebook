.class public Lorg/codehaus/jackson/map/ext/JodaSerializers;
.super Ljava/lang/Object;
.source "JodaSerializers.java"

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
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sput-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers;->a:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/DateTime;

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaSerializers$DateTimeSerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ext/JodaSerializers$DateTimeSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers;->a:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/LocalDateTime;

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaSerializers$LocalDateTimeSerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ext/JodaSerializers$LocalDateTimeSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers;->a:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/LocalDate;

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaSerializers$LocalDateSerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ext/JodaSerializers$LocalDateSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers;->a:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/DateMidnight;

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 39
    sget-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
