.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 359
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-virtual {p2, p0, p1}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 366
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    check-cast p1, Ljava/util/Date;

    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;->a(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
