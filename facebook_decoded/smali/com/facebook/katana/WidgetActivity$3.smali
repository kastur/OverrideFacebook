.class Lcom/facebook/katana/WidgetActivity$3;
.super Ljava/lang/Object;
.source "WidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/WidgetActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/WidgetActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/katana/WidgetActivity$3;->a:Lcom/facebook/katana/WidgetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity$3;->a:Lcom/facebook/katana/WidgetActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/WidgetActivity;->finish()V

    .line 166
    return-void
.end method
