.class Lcom/facebook/orca/contacts/picker/ContactPickerView$5;
.super Ljava/lang/Object;
.source "ContactPickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$5;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$5;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
