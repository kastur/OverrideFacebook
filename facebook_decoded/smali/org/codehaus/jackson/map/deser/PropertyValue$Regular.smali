.class final Lorg/codehaus/jackson/map/deser/PropertyValue$Regular;
.super Lorg/codehaus/jackson/map/deser/PropertyValue;
.source "PropertyValue.java"


# instance fields
.field private c:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/PropertyValue;-><init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;)V

    .line 51
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Regular;->c:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Regular;->c:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Regular;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
