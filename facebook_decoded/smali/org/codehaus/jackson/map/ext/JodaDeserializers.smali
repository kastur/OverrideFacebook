.class public Lorg/codehaus/jackson/map/ext/JodaDeserializers;
.super Ljava/lang/Object;
.source "JodaDeserializers.java"

# interfaces
.implements Lorg/codehaus/jackson/map/util/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/codehaus/jackson/map/util/Provider",
        "<",
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/deser/StdDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/codehaus/jackson/map/deser/StdDeserializer;

    const/4 v1, 0x0

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateTimeDeserializer;

    const-class v3, Lorg/joda/time/DateTime;

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateTimeDeserializer;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateTimeDeserializer;

    const-class v3, Lorg/joda/time/ReadableDateTime;

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateTimeDeserializer;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateTimeDeserializer;

    const-class v3, Lorg/joda/time/ReadableInstant;

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateTimeDeserializer;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaDeserializers$LocalDateDeserializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$LocalDateDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaDeserializers$LocalDateTimeDeserializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$LocalDateTimeDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateMidnightDeserializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateMidnightDeserializer;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
